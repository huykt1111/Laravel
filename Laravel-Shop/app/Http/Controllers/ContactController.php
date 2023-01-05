<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Product\ProductService;

class ContactController extends Controller
{
    protected $product;

    public function __construct(ProductService $product)
    {
        $this->product = $product;
    }

    public function index()
    {
        return view('contact',[
           'title' => 'Liên hệ',
           'products' => $this->product->get()
        ]);
    }
}