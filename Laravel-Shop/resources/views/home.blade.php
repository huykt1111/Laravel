@extends('main')

@section('content')

    <!-- Slider -->
    <!-- <section class="section-slide">
        <div class="wrap-slick1">
            <div class="slick1">

                @foreach($sliders as $slider)

                    <div class="item-slick1" style="background-image: url({{ $slider->thumb }});">
                        <div class="container h-full">
                            <div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
                                <div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
                            <span class="ltext-101 cl2 respon2" style="color: red;">
                                HOT 2023
                            </span>
                                </div>

                                <div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
                                    <h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1"  style="color: red;">
                                        {{ $slider->name }}
                                    </h2>
                                </div>

                                <div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
                                    <a href="{{ $slider->url }}" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
                                        Shop Now
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                @endforeach
            </div>
        </div>
    </section> -->

    <section id="slider" style="margin-top: 150px;">
        <div class="container">
            <ul class="slider-list">
                @foreach($sliders as $slider)
                    <li class="slider-list__item">

                        <a href="{{ $slider->url }}">
                            <img src="{{ $slider->thumb }}" alt="">
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    </section>

    <!-- Menus -->
    <!-- <div class="sec-banner bg0 p-t-80 p-b-50">
        <div class="container">
            <div class="row">
                @foreach($menus as $menu)
                    <div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
                        
                        <div class="block1 wrap-pic-w">
                            <img src="{{ $menu->thumb }}" alt="IMG-BANNER" />

                            <a href="/danh-muc/{{ $menu->id }}-{{ \Str::slug($menu->name, '-') }}.html" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
                                <div class="block1-txt-child1 flex-col-l">
                            <span class="block1-name ltext-102 trans-04 p-b-8">
                                {{ $menu->name }}
                            </span>

                                    <span class="block1-info stext-102 trans-04">
                                HOT 2023
                            </span>
                                </div>

                                <div class="block1-txt-child2 p-b-4 trans-05">
                                    <div class="block1-link stext-101 cl0 trans-09">
                                        Shop Now
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div> -->

    <section id="category">
        <div class="container">
            <h2 class="category-title">Danh mục</h2>
            <div class="category-list">
                @foreach($menus1 as $menu)
                    <div class="category-list__item">
                        <a href="/danh-muc/{{ $menu->id }}-{{ \Str::slug($menu->name, '-') }}.html" class="category-list__item-link">
                            <img src="{{ $menu->thumb }}" alt="">
                        </a>
                        <h3 class="category-item__name">{{ $menu->name }}</h3>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- Deal -->
    <section id="product-sale">
        <div class="container">
            <div class="product-sale-top">
                <div class="product-sale-text">
                    <a href="">Deal sốc mỗi ngày</a>
                    <p>Sản phẩm giảm giá hỗ trợ khách hàng</p>
                </div>
                <div class="product-sale-count">
                    <div class="wrapper-count">
                        <div class="countdown-block">
                            <span class="days time-elem">
                            <span class="top">00</span>
                            <span class="top-back">
                                <span>00</span>
                            </span>
                            <span class="bottom">00</span>
                            <span class="bottom-back">
                                <span>00</span>
                            </span>
                            </span>
                        </div>
                        <div class="countdown-block">
                            <span class="hours time-elem">
                            <span class="top">00</span>
                            <span class="top-back">
                                <span>00</span>
                            </span>
                            <span class="bottom">00</span>
                            <span class="bottom-back">
                                <span>00</span>
                            </span>
                            </span>
                        </div>
                        <div class="countdown-block">
                            <span class="minutes time-elem">
                            <span class="top">00</span>
                            <span class="top-back">
                                <span>00</span>
                            </span>
                            <span class="bottom">00</span>
                            <span class="bottom-back">
                                <span>00</span>
                            </span>
                            </span>
                        </div>
                        <div class="countdown-block">
                            <span class="seconds time-elem">
                            <span class="top">00</span>
                            <span class="top-back">
                                <span>00</span>
                            </span>
                            <span class="bottom">00</span>
                            <span class="bottom-back">
                                <span>00</span>
                            </span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="list-product-sale owl-carousel owl-theme" id="product-sale-slider">
                @foreach($productsGG as $key => $product)
                    <div class="col-product__item sale-home">
                        <form action="/add-cart" method="post" >
                            @csrf
                            <div>
                                <div class="product-item__sale-off">
                                    <span class="home-product-item__percent">Giảm</span>
                                    <label class ="home-product-item__label" for="">Giá</label>
                                </div>
                                <a href="">
                                    <i data-heart=""  class="icon-heart-element product-item-icon far fa-heart"></i>
                                </a>
                            </div>
                            <div class="product-img">
                                <a href="/san-pham/{{ $product->menu_id }}-{{ $product->id }}-{{ Str::slug($product->name, '-') }}.html" style="display: block;">
                                    <span class ="img--hover"></span> 
                                    <img src="{{ $product->thumb }}" alt="{{ $product->name }}">
                                </a>
                                <p class="text-sale">Sale</p>
                            </div>
                            
                            <div class="product-fruits__infos">
                                <h2 class="tilte-name-product-t">{{ $product->name }}</h2>
                                <div>
                                    <input type="hidden" class="mtext-104 cl3 txt-center num-product" type="number"
                                    name="num_product" value="1">
                                    <span class="price-new">{!!  \App\Helpers\Helper::price($product->price, $product->price_sale)  !!} Vnđ</span>
                                    @auth
                                        <button type="submit" class="button-add-product button-add-product btn-add-cart button-add-product--view">Cho vào giỏ</button>
                                    @endauth
                                    <span class="price-old">{{ number_format($product->price) }} Vnđ</span>
                                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                                </div>
                            </div>
                        </form>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- Hot Click -->
    <section id="populator">
        <div class="container">
            <div class="populator__head">
                <div>
                    <h2 class="populator__head-title">
                        <a href="">Gian hàng nỗi bật</a>
                    </h2>
                    <p class="populator__head-desc">Sản phẩm được khách hàng ưa chuộng nhất</p>
                </div>
            </div>
            <div class="row isotope-grid">
                @foreach($productsClick as $key => $product)
                    <div class="col col-lg-3 col-md-6 col-sm-6 col-6 isotope-item women">
                        <div class="col-product__item sale-home product-item__sale-off--none">
                            <form action="/add-cart" method="POST">
                                @csrf
                                <div>
                                    <a href="">
                                        <i data-heart="130" class="icon-heart-element product-item-icon far fa-heart"></i>
                                    </a>
                                </div>
                                <div class="product-img">
                                    <a href="/san-pham/{{ $product->menu_id }}-{{ $product->id }}-{{ Str::slug($product->name, '-') }}.html">
                                        <span class="img--hover"></span> 
                                        <img src="{{ $product->thumb }}" alt="{{ $product->name }}">
                                    </a>
                                    <p class="text-sale">Sale</p>
                                </div>
                                <div class="product-fruits__infos">
                                    <h2 class="tilte-name-product">{{ $product->name }}</h2>
                                    <div>
                                        <input type="hidden" class="mtext-104 cl3 txt-center num-product" type="number"
                                            name="num_product" value="1">
                                        <span class="price-new">{!!  \App\Helpers\Helper::price($product->price, $product->price_sale)  !!} Vnđ</span>
                                        @auth
                                        <button type="submit" class="button-add-product button-add-product btn-add-cart button-add-product--view">Cho vào giỏ</button>
                                        @endauth
                                        <span class="price-old">0đ</span>   
                                        <input type="hidden" name="product_id" value="{{ $product->id }}">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- Product -->
    <section class="bg0 p-t-23 p-b-140">
        <div class="container">
            
            <div class="populator__head">
                <div>
                    <h2 class="populator__head-title">
                        <a href="">Tổng quan về sản phẩm</a>
                    </h2>
                    <p class="populator__head-desc">Tất cả sản phẩm</p>
                </div>
            </div>

            <div id="loadProduct">
                @include('products.list')
            </div>


            <!-- Load more -->
            <div class="flex-c-m flex-w w-full p-t-45" id="button-loadMore">
                <input type="hidden" value="1" id="page">
                <a onclick="loadMore()" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                    Load More
                </a>
            </div>
        </div>
    </section>
@endsection
