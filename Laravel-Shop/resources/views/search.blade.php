@extends('main')

@section('content')
    <div class="bg0 m-t-23 p-b-140 p-t-80">
        <div class="container">
            <div class="flex-w flex-sb-m p-b-15">
                <div class="break-crumb">
                    <div class="break-crumb__head">
                        <div class="home">
                            <a href="#">
                                <span>Trang chủ</span>
                            </a>
                                <span class="mr_lr">&nbsp;/ &nbsp;</span>
                        </div>
                        <div>
                            <strong>
                                <span>{{ $title }}</span>
                            </strong>
                        </div>
                    </div>
                </div>
            </div>

            <div class="flex-w flex-sb-m p-b-10">
                <div class="break-crumb">
                    <div class="break-crumb__head">
                        <div>
                            <strong>
                                <span>Tìm thấy {{ count($products) }} sản phẩm</span>
                            </strong>
                        </div>
                    </div>
                </div>
            </div>

            @include('products.list')
        </div>
    </div>

@endsection
