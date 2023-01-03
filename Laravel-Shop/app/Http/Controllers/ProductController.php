<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Product\ProductService;

class ProductController extends Controller
{
    protected $productService;
    
    public function __construct(ProductService $productService)
    {
        $this->productService = $productService;
    }

    public function index($menuid = '', $id = '', $slug = '')
    {
        $this->productService->update_click($id);
        $product = $this->productService->show($id);
        // $productsMore = $this->productService->more($id);
        $productsMore = $this->productService->moremn($menuid);

        return view('products.content', [
            'title' => $product->name,
            'product' => $product,
            'products' => $productsMore
        ]);
    }
}
