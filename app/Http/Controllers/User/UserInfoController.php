<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\UserRequestUpdateInfo;
use App\User;

class UserInfoController extends Controller
{
    public function updateInfo()
    {
        return view('user.update_info');
    }

    public function saveUpdateInfo(UserRequestUpdateInfo $request)
    {
        $data = $request->except('_token','avatar');
        $user = User::find(\Auth::id());

        if ($request->avatar) {
            $image = upload_image('avatar');
            if ($image['code'] == 1)
                $data['avatar'] = $image['name'];
        }

        $user->update($data);

        \Session::flash('toastr', [
            'type'    => 'success',
            'message' => 'Update successful'
        ]);

        return redirect()->back();
    }
}
