<section class="top-header desktop" style="background-color:#72a27a ">
    <div class="container">
        <div class="content">
            <div class="left">
                <a href="{{ route('get.static.customer_care') }}" title="Customer care" rel="nofollow">Customer care</a>
                 <a href="{{ route('get.user.transaction') }}" title="Check your order" rel="nofollow">Check your order</a>
            </div>
            <div class="right">
                @if (Auth::check())
                    <a href="">Hello : {{ Auth::user()->name }}</a>
                    <a href="{{  route('get.user.dashboard') }}">Account Management</a>
                    <a href="{{  route('get.logout') }}">Log out </a>
                @else
                    <a href="{{  route('get.register') }}">Register</a>
                    <a href="{{  route('get.login') }}">Log in</a>
                @endif
             </div>
        </div>
    </div>
</section>
<section class="top-header mobile" style="background-color:#72a27a!important;">
    <div class="container">
        <div class="content">
            <div class="left">
                <a href="{{ route('get.static.customer_care') }}" title="Customer care" rel="nofollow">Customer care</a>
                <a href="{{ route('get.user.transaction') }}" title="Check your order" rel="nofollow">Check your order</a>
                @if (Auth::check())
                    <a href="">Helo {{ Auth::user()->name }}</a>
                    <a href="{{  route('get.user.dashboard') }}">Account Management</a>
                    <a href="{{  route('get.logout') }}">Log out</a>
                @else
                    <a href="{{  route('get.register') }}">Register</a>
                    <a href="{{  route('get.login') }}">Log in</a>
                @endif
            </div>
        </div>
    </div>
</section>

<div class="commonTop" style="position: unset !important;">
    <div id="headers" style="background-color:#406f48!important;">
        <div class="container header-wrapper">
            <!--Thay đổi-->
            <div class="logo">
                <a href="{{  route('get.home') }}" class="desktop">
                    <img src="{{ asset('images/logo.png') }}" style="height: 35px;" alt="Home">
                </a>
                <span class="menu js-menu-cate"><i class="fa fa-list-ul"></i> </span>
            </div>
            <div class="search">

                <form action="{{ $link_search ?? route('get.product.list',['k' => Request::get('k')]) }}" role="search" method="GET">
                    <input type="text" name="k" value="{{ Request::get('k') }}" class="form-control" placeholder="Search product ...">
                    <button type="submit" class="btnSearch" style="background-color:#72a27a!important;">
                        <i class="fa fa-search"></i>
                        <span>Search</span>
                    </button>
                </form>
            </div>
            <ul class="right">
                <li>
                    <a href="{{ route('get.shopping.list') }}" title="Cart">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="text">
                            <span class="">Cart ({{ \Cart::count() }})</span>
                            <span style="font-size: 11px" class="total_cart"> @if (\Cart::subtotal(0) > 0) {{ \Cart::subtotal(0) }} đ @endif</span>
                        </span>
                    </a>
                </li>
                <li class="desktop">
                    <a href="tel:18006005" title="" class="info-user js-show-dropdown">
                        <img src="{{ isset(Auth::user()->avatar) ? pare_url_file(Auth::user()->avatar) : asset('images/no-image.jpg') }}" alt="">
                        <span class="fa fa-angle-down"></span>
                    </a>
                    <ul class="header-menu-user">
                        @foreach(config('user') as $item)
                            <li>
                                <a href="{{ route($item['route']) }}" class="{{ \Request::route()->getName() == $item['route'] ? 'active' : '' }}">
                                    <i class="{{ $item['icon'] }}"></i>
                                    <span>{{ $item['name'] }}</span>
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </li>
            </ul>

            <div id="menu-main" class="container" style="display: none">
                <ul class="menu-list">
                    @foreach($categories as $item)
                    <li>
                        <a href="{{  route('get.category.list', $item->c_slug.'-'.$item->id) }}"
                           title="{{  $item->c_name }}" class="js-open-menu">
                            <img src="{{ pare_url_file($item->c_avatar) }}" alt="{{ $item->c_name }}">
                            <span>{{  $item->c_name }}</span>
                            @if (isset($item->children) && count($item->children))
                                <span class="fa fa-angle-right"></span>
                            @else
                                <span></span>
                            @endif
                        </a>
                        @if (isset($item->children) && count($item->children))
                        <div class="submenu">
                            <div class="group">
                                <div class="item">
                                    @foreach($item->children as $children)
                                        <a href="{{  route('get.category.list', $children->c_slug.'-'.$children->id) }}"
                                           title="{{  $children->c_name }}" class="js-open-menu">
                                            <span>{{  $children->c_name }}</span>
                                        </a>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        @endif
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>

    </div>
</div>
