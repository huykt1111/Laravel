<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Admin\Users\LoginController;
use \App\Http\Controllers\MainController;
use \App\Http\Controllers\UserController;
use \App\Http\Controllers\Admin\MenuController;
use \App\Http\Controllers\Admin\ProductController;
use \App\Http\Controllers\Admin\SliderController;
use \App\Http\Controllers\ContactController;

Route::get('admin/users/login',[LoginController::class, 'index'])->name('login');
Route::post('admin/users/login/store',[LoginController::class, 'store']);

Route::middleware(['auth'])->group(function(){
    
    Route::prefix('admin')->group(function(){
        Route::get('/', [\App\Http\Controllers\Admin\MenuController::class, 'index'])->name('admin');
        Route::get('main', [\App\Http\Controllers\Admin\MenuController::class, 'index']);
        
        #Menu
        Route::prefix('menus')->group(function(){
            Route::get('add',[MenuController::class, 'create']);
            Route::post('add',[MenuController::class, 'store']);
            Route::get('list',[MenuController::class, 'index']);
            Route::get('edit/{menu}',[MenuController::class, 'show']);
            Route::post('edit/{menu}',[MenuController::class, 'update']);
            Route::DELETE('destroy',[MenuController::class, 'destroy']);
        });

        #Product
        Route::prefix('products')->group(function(){
            Route::get('add',[ProductController::class, 'create']);
            Route::post('add',[ProductController::class, 'store']);
            Route::get('list',[ProductController::class, 'index']);
            Route::get('edit/{product}',[ProductController::class, 'show']);
            Route::post('edit/{product}',[ProductController::class, 'update']);
            Route::DELETE('destroy',[ProductController::class, 'destroy']);
        });

        #Slider
        Route::prefix('sliders')->group(function () {
            Route::get('add', [SliderController::class, 'create']);
            Route::post('add', [SliderController::class, 'store']);
            Route::get('list', [SliderController::class, 'index']);
            Route::get('edit/{slider}', [SliderController::class, 'show']);
            Route::post('edit/{slider}', [SliderController::class, 'update']);
            Route::DELETE('destroy',[SliderController::class, 'destroy']);
        });

        
        Route::get('passwordadm', [UserController::class, 'passwordadm'])->name('passwordadm');
        Route::post('password', [UserController::class, 'password_action'])->name('password.action');
        Route::get('logout1', [UserController::class, 'logout1'])->name('logout1');

        #Upload
        Route::post('upload/services',[\App\Http\Controllers\Admin\UploadController::class,'store']);

        #Cart
        Route::get('customers', [\App\Http\Controllers\Admin\CartController::class, 'index']);
        Route::get('customers/view/{customer}', [\App\Http\Controllers\Admin\CartController::class, 'show']);
    });
});

Route::get('register', [UserController::class, 'register'])->name('register');
Route::post('register', [UserController::class, 'register_action'])->name('register.action');
Route::get('login', [UserController::class, 'login'])->name('login');
Route::post('login', [UserController::class, 'login_action'])->name('login.action');
Route::get('password', [UserController::class, 'password'])->name('password');
Route::post('password', [UserController::class, 'password_action'])->name('password.action');
Route::get('logout', [UserController::class, 'logout'])->name('logout');

Route::get('login/google', [\App\Http\Controllers\SocialController::class, 'redirectToGoogle'])->name('login.google');
Route::get('login/google/callback', [\App\Http\Controllers\SocialController::class, 'handleGoogleCallback']);

Route::get('login/facebook', [\App\Http\Controllers\SocialController::class, 'redirectToFacebook'])->name('login.facebook');
Route::get('login/facebook/callback', [\App\Http\Controllers\SocialController::class, 'handleFacebookCallback']);

Route::get('login/github', [\App\Http\Controllers\SocialController::class, 'redirectToGithub'])->name('login.github');
Route::get('login/github/callback', [\App\Http\Controllers\SocialController::class, 'handleGithubCallback']);

Route::get('/', [MainController::class, 'index'])->name('home');
Route::get('search', [MainController::class, 'getSearch'])->name('search');
Route::post('/services/load-product', [MainController::class, 'loadProduct']);

Route::get('danh-muc/{id}-{slug}.html',[\App\Http\Controllers\MenuController::class, 'index']);
Route::get('san-pham/{menuid}-{id}-{slug}.html',[\App\Http\Controllers\ProductController::class, 'index']);

Route::post('add-cart', [App\Http\Controllers\CartController::class, 'index']);
Route::get('carts', [App\Http\Controllers\CartController::class, 'show']);
Route::post('update-cart', [App\Http\Controllers\CartController::class, 'update']);
Route::get('carts/delete/{id}', [App\Http\Controllers\CartController::class, 'remove']);
Route::post('carts', [App\Http\Controllers\CartController::class, 'addCart']);
Route::get('contact', [App\Http\Controllers\ContactController::class, 'index'])->name('contact');