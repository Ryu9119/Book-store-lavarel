<div style="width: 100%;max-width: 600px;margin:0 auto">
    <div style="height: 55px;background: #3a2615;padding: 10px">
        <div style="width: 50%">
            <a href="">
                <img style="height: 55px" src="http://bookshop.abc/public/images/logo.png">
            </a>
        </div>
        <div style="width: 50%"></div>
    </div>
    <div style="background: white;padding: 15px;border:1px solid #dedede;">
        <h2 style="margin:10px 0;border-bottom: 1px solid #dedede;padding-bottom: 10px;">List of products you have purchased</h2>
        <div>
            @foreach($shopping as $key => $item)
                <div style="border-bottom: 1px solid #dedede;padding-bottom: 10px;padding-top: 10px;">
                    <div class="" style="width: 15%;float: left;">
                        <a href="">
                            <img style="max-width: 100%;width: 80px;height: 100px" src="http://bookshop.abc/public/{{ pare_url_file($item->options->image) }}">
                        </a>
                    </div>
                    <div style="width: 80%;float: right;">
                        <h4 style="margin:10px 0">{{ $item->name }}</h4>
                        <p style="margin: 4px 0;font-size: 14px;">Price <span>{{  number_format($item->price,0,',','.') }} đ</span></p>
                        @if ($item->options->price_old)
                            <p style="margin: 4px 0;font-size: 14px;">
                                <span style="text-decoration: line-through;">{{  number_format(number_price($item->options->price_old),0,',','.') }} đ</span>
                                <span class="sale">- {{ $item->options->sale }} %</span>
                            </p>
                        @endif
                    </div>
                    <div style="clear: both;"></div>
                </div>
            @endforeach
            <h2>Total amount : <b>{{ \Cart::subtotal(0) }}</b></h2>
        </div>
        <div>
            <p>This is an automated email, please do not reply to this email</p>
            <p>Invite friend <a href="{{ route('get.user.update_info') }}">click here</a> to update personal information</p>
        </div>
    </div>
    <div style="background: #f4f5f5;box-sizing: border-box;padding: 15px">
        <p style="margin:2px 0;color: #333">Email : admin@gmail.com</p>
        <p style="margin:2px 0;color: #333">Phone : 0928817228</p>
        <p style="margin:2px 0;color: #333">Face : <a href="">Admin</a></p>
    </div>
</div>