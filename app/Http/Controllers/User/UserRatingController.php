<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Rating;
use App\Models\Product;
use Carbon\Carbon;

class UserRatingController extends Controller
{
    public function index()
    {
        $ratings = Rating::with('product:id,pro_name,pro_slug')
            ->where('r_user_id', get_data_user('web'))
            ->orderByDesc('id')
            ->paginate(10);

        return view('user.rating', compact('ratings'));
    }

    public function addRatingProduct(Request $request)
    {
        if ($request->ajax())
        {
            $rating               = new Rating();
            $rating->r_user_id    = \Auth::id();
            $rating->r_product_id = $request->product_id;
            $rating->r_number     = $request->review;
            $rating->r_content    = $request->content_review;
            $rating->created_at   = Carbon::now();
            $rating->save();

            if ($rating->id) {
                $html = view('frontend.pages.product_detail.include._inc_rating_item',compact('rating'))->render();
                $this->staticRatingProduct($request->product_id, $request->review);
            }
            return response([
                'html'     => $html ?? null,
                'messages' => 'Successful product review'
            ]);
        }
    }

    public function delete()
    {
        $rating = Rating::where('r_user_id', get_data_user('web'))->first();

        if ($rating) {
            $product =  Product::find($rating->r_product_id);
            $product->pro_review_total --;
            $product->pro_review_star -= $rating->r_number;

            $product->save();

            if ($product->pro_review_total)
            {
                $product->pro_age_review = round($product->pro_review_star / $product->pro_review_total,0);
                $product->save();    
            }
            

            $rating->delete();
        }

        return redirect()->back();
    }

    public function staticRatingProduct($productID, $number)
    {
        $product =  Product::find($productID);
        $product->pro_review_total++;
        $product->pro_review_star += $number;
        $product->save();

        if ($product->pro_review_total)
        {
            $product->pro_age_review = round($product->pro_review_star / $product->pro_review_total,0);
            $product->save();
        }
    }
}
