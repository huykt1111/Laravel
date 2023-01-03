<div class="row isotope-grid">
    @foreach($products as $key => $product)
        
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
