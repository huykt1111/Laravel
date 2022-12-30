
@extends('main')

@section('content')
<div class="bg0 m-t-23 p-b-140 p-t-100">
    <div class="container">
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
                        <span>Cập nhật tài khoản</span>
                    </strong>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 30px; align-items: center; justify-content: center;">
            <div class="col-md-6">
                @if(session('success'))
                    <p class="alert alert-danger">{{ session('success') }}</p>
                @endif
                @if($errors->any())
                    @foreach($errors->all() as $err)
                        <p class="alert alert-danger">{{ $err }}</p>
                    @endforeach
                @endif
                <form method="POST" action="{{ route('password.action') }}">
                    @csrf
                    <div class="mb-3">
                        <label>Mật khẩu cũ <span class="text-danger">*</span></label>
                        <input class="form-control" type="password" name="old_password" />
                    </div>
                    <div class="mb-3">
                        <label>Mật khẩu mới <span class="text-danger">*</span></label>
                        <input class="form-control" type="password" name="new_password" />
                    </div>
                    <div class="mb-3">
                        <label>Xác nhận lại mật khẩu <span class="text-danger">*</span></label>
                        <input class="form-control" type="password" name="new_password_confirmation" />
                    </div>
                    <div class="mb-3" style="display: flex; justify-content: center;">
                        <button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04" style=";background-color: var(--cl-green);">Thay đổi</button>
                    </div>
                </form>
            </div>
        </div>   
    </div>
</div>
 
@endsection