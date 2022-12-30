@extends('admin.main')

@section('content')

<form action="{{ route('password.action') }}" method="POST">
    <div class="card-body">
        
        <div class="form-group">
            <label for="menu">Mật khẩu cũ <span class="text-danger">*</span></label>
            <input class="form-control" type="password" name="old_password" placeholder="Nhập mật khẩu cũ">
        </div>

        <div class="form-group">
            <label for="menu">Mật khẩu mới <span class="text-danger">*</span></label>
            <input class="form-control" type="password" name="new_password" placeholder="Nhập mật khẩu mới">
        </div>

        <div class="form-group">
            <label for="menu">Xác nhận lại mật khẩu <span class="text-danger">*</span></label>
            <input class="form-control" type="password" name="new_password_confirmation" placeholder="Nhập lại mật khẩu">
        </div>

    </div>
    <div class="card-footer">
        <button type="submit" class="btn btn-primary">Cập nhật tài khoản</button>
    </div>
    @csrf
</form>
@endsection
