<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\Slider\SliderService;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Product;

class MainController extends Controller
{
    protected $slider;
    protected $menu;
    protected $product;

    public function __construct(SliderService $slider,MenuService $menu, ProductService $product)
    {
        $this->slider = $slider;
        $this->menu = $menu;
        $this->product = $product;
    }

    public function index()
    {
        return view('home',[
           'title' => 'Fresh Food',
           'sliders' => $this->slider->show(),
           'menus' => $this->menu->show(),
           'menus1' => $this->menu->show1(),
           'products' => $this->product->get(),
           'productsGG' => $this->product->getGG(),
           'productsClick' => $this->product->click(),
        ]);
    }

    public function getSearch(Request $request)
    {
        $products = Product::where('name','like','%'.$request->key.'%')
                            ->orWhere('price',$request->key)
                            ->get();

        return view('search', compact('products'),['title' => 'Tìm kiếm']);
    }

    public function loadProduct(Request $request)
    {
        $page = $request->input('page',0);
        $result = $this->product->get($page);

        if(count($result)!=0){
            $html = view('products.list',['products' => $result])->render();

            return response()->json([
                'html' => $html
            ]);
        }
        return response()->json([
            'html' => ''
        ]);
    }

    public function checkUserType(){
        if (!Auth::user()) {
            return redirect()->route('login');
        }
        if (Auth::user()->userType === 'ADM') {
            return redirect()->route('admin');
        }
        if (Auth::user()->userType === 'USR') {
            return redirect()->route('user');
        }
    }
}