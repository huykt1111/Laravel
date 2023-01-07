<header>
    @php $menusHtml = \App\Helpers\Helper::menus($menus); @endphp
    @php
        if (is_null(\Illuminate\Support\Facades\Session::get('carts'))) {
            $productQuantity = 0;
        } else {
            $productQuantity = count(\Illuminate\Support\Facades\Session::get('carts'));
        }
    @endphp
    <!-- Header desktop -->
    <div class="container-menu-desktop">
        <div class="wrap-menu-desktop">
            <nav class="limiter-menu-desktop container">

                <!-- Logo desktop -->
                <a href="/" class="logo">
                    <img src="/template/images/logo.webp" alt="IMG-LOGO">
                </a>

                <!-- Menu desktop -->
                <div class="menu-desktop">
                    <ul class="main-menu">
                        <li class="active-menu">
                            <a href="/">Trang chủ</a>
                        </li>

                        {!! $menusHtml !!}

                        <li>
                            <a href="{{ route('contact') }}">Liên hệ</a>
                        </li>
                        @auth

                            @if (Auth::user()->avatar)
                                <li style="margin-right: -20px;">
                                    <img src="{{ Auth::user()->avatar }}"
                                        style="border-radius: 50%; height: auto; width: 2.1rem;"
                                        class="img-circle elevation-2" alt="">
                                </li>
                            @endif
                            <li>
                                <div class="dropdown">

                                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Xin chào <b>{{ Auth::user()->name }}</b>
                                    </a>

                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                        <a class="dropdown-item" href="{{ route('password') }}">Thay đổi mật khẩu</a>
                                        <a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a>
                                    </div>
                                </div>
                            </li>
                        @endauth
                        @guest
                            <li>
                                <div class="dropdown">
                                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Đăng nhập
                                    </a>

                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                        <a class="dropdown-item" href="{{ route('login') }}">Đăng nhập</a>
                                        <a class="dropdown-item" href="{{ route('register') }}">Đăng ký</a>
                                    </div>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>

                <!-- Icon header -->
                <div class="wrap-icon-header flex-w flex-r-m">
                    @auth
                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                            <i class="zmdi zmdi-search"></i>
                        </div>

                        <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
                            data-notify="{{ $productQuantity }}">
                            <i class="zmdi zmdi-shopping-cart"></i>
                        </div>

                        <a href="#"
                            class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
                            data-notify="0">
                            <i class="zmdi zmdi-favorite-outline"></i>
                        </a>
                    @endauth
                </div>
            </nav>
        </div>
    </div>

    <!-- Header Mobile -->
    <div class="wrap-header-mobile">
        <!-- Logo moblie -->
        <div class="logo-mobile">
            <a href="index.html"><img src="/template/images/logo.webp" alt="IMG-LOGO"></a>
        </div>

        <!-- Icon header -->
        <div class="wrap-icon-header flex-w flex-r-m m-r-15">

            @auth
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
                    <i class="zmdi zmdi-search"></i>
                </div>
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart"
                    data-notify="{{ $productQuantity }}">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>

                <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
                    data-notify="0">
                    <i class="zmdi zmdi-favorite-outline"></i>
                </a>
            @endauth
        </div>

        <!-- Button show menu -->
        <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
            <span class="hamburger-box">
                <span class="hamburger-inner"></span>
            </span>
        </div>
    </div>


    <!-- Menu Mobile -->
    <div class="menu-mobile">
        <ul class="main-menu-m">
            <li class="active-menu">
                <a href="">Trang chủ</a>
            </li>

            {!! $menusHtml !!}

            <li>
                <a href="contact.html">Liên hệ</a>
            </li>

            @auth
                <li>
                    <div class="dropdown">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Xin chào <b>{{ Auth::user()->name }}</b>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="{{ route('password') }}">Thay đổi mật khẩu</a>
                            <a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a>
                        </div>
                    </div>
                </li>
            @endauth
            @guest
                <li>
                    <div class="dropdown">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Đăng nhập
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="{{ route('login') }}">Đăng nhập</a>
                            <a class="dropdown-item" href="{{ route('register') }}">Đăng ký</a>
                        </div>
                    </div>
                </li>
            @endguest
        </ul>
    </div>

    <!-- Modal Search -->
    <div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
        <div class="container-search-header">
            <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
                <img src="/template/images/icons/icon-close2.png" alt="CLOSE">
            </button>

            <form class="wrap-search-header flex-w p-l-15" method="get" action="{{ route('search') }}">
                <button class="flex-c-m trans-04">
                    <i class="zmdi zmdi-search"></i>
                </button>
                <input class="plh3" type="text" name="key" placeholder="Tìm kiếm..." style="font-family: Arial, sans-serif !important; font-size: 20px;">
            </form>
        </div>
    </div>
</header>
