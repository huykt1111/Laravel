
@extends('main')

@section('content')

<div class="bg0 m-t-23 p-t-80">
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
                        <span>Đăng ký tài khoản</span>
                    </strong>
                </div>
            </div>
        </div>
        <div class="page-content-account">
            <div class="d-group">
                <div class="left-col">
                    <div class="d-group__login">
                        <h1>Đăng ký tài khoản</h1>
                        @if($errors->any())
                            @foreach($errors->all() as $err)
                                <p class="alert alert-danger">{{ $err }}</p>
                            @endforeach
                        @endif
                        <form method="POST" action="{{ route('register.action') }}">
                            @csrf
                            <fieldset class="form-group">
                                <label>Họ tên <span class="text-danger">*</span></label>
                                <input class="form-control form-control-lg" type="text" name="name" value="{{ old('name') }}" placeholder="Họ tên"/>
                            </fieldset>
                            <fieldset class="form-group">
                                <label>Tài khoản <span class="text-danger">*</span></label>
                                <input class="form-control form-control-lg" type="text" name="email" value="{{ old('email') }}" placeholder="Tài khoản"/>
                            </fieldset>
                            <fieldset class="form-group">
                                <label>Mật khẩu <span class="text-danger">*</span></label>
                                <input class="form-control form-control-lg" type="password" name="password" placeholder="Mật khẩu"/>
                            </fieldset>
                            <fieldset class="form-group">
                                <label>Nhập lại mật khẩu <span class="text-danger">*</span></label>
                                <input class="form-control form-control-lg" type="password" name="password_confirmation" placeholder="Nhập lại mật khẩu"/>
                            </fieldset>
                            <button class="btn-login">Đăng ký</button>
                        </form> 
                    </div>      
                    <div class="social-login">
                        <p class="social-login-center">
                            <span>Hoặc đăng nhập bằng</span>
                        </p>
                        <div class="social-login-account">
                            <a class="btn" href="{{ route('login.facebook') }}" style="width: 130px; height: 37px; margin-right: 5px; background-color: #3b5998; padding: 10px; border-radius: 0.3rem; color: var(--white) !important;">
                                <label><i class="fab fa-facebook"></i>&nbsp;Facebook</label>
                            </a> 
                            <a href="{{ route('login.google') }}" class="btn" style="width: 130px; height: 37px; margin-right: 5px; background-color: #e14b33; padding: 10px; border-radius: 0.3rem; color: var(--white) !important;">
                                
                                <label><i class="fab fa-google-plus"></i>&nbsp;Google</label>
                            </a> 
                        </div> 
                        <div class="title-forgetpass">
                            <p>Bạn quên mật khẩu bấm <a href="#">
                                Vào đây
                            </a></p>
                        </div>   
                    </div>
                </div>
                <div class="right-col">
                    <h1>Quyền lợi thành viên</h1>
                    <div>
                        <p>Vận chuyển siêu tốc</p>
                        <p>Sản phẩm đa dạng</p>
                        <p>Tích điểm đổi quà</p>
                        <p>Được giảm giá cho lần mua tiếp theo lên đến 10%</p>
                    </div>
                    <a class="btn-register-default" href="{{ route('login') }}">Đăng nhập</a>
                </div>
            </div>
        </div>
    </div>
    
</div>

@endsection

 