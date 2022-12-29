
@extends('main')

@section('content')
<div class="bg0 m-t-23 p-b-140 p-t-80">
    <div class="container">
        <div class="row">
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
                        <label>Old Password <span class="text-danger">*</span></label>
                        <input class="form-control" type="password" name="old_password" />
                    </div>
                    <div class="mb-3">
                        <label>New Password <span class="text-danger">*</span></label>
                        <input class="form-control" type="password" name="new_password" />
                    </div>
                    <div class="mb-3">
                        <label>New Password Confirmation <span class="text-danger">*</span></label>
                        <input class="form-control" type="password" name="new_password_confirmation" />
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-primary">Change</button>
                        <a class="btn btn-danger" href="/">Back</a>
                    </div>
                </form>
            </div>
        </div>   
    </div>
</div>
 
@endsection