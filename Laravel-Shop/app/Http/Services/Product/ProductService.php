<?php

namespace App\Http\Services\Product;

use App\Models\Product;

class ProductService 
{
    const LIMIT = 16;

    public function get($page = null)
    {
        return Product::select('id','name','price','price_sale','thumb','menu_id')
        ->orderByDesc('id')
        ->when($page != null, function($query) use ($page) {
            $query->offset($page * self::LIMIT);
        })
        ->limit(self::LIMIT)
        ->get();
    }

    public function getGG($page = null)
    {
        return Product::select('id','name','price','price_sale','thumb','menu_id')
        ->where('price_sale','!=',0)
        ->orderByDesc('id')
        ->when($page != null, function($query) use ($page) {
            $query->offset($page * self::LIMIT);
        })
        ->limit(self::LIMIT)
        ->get();
    }
    
    public function show($id)
    {
        return Product::where('id',$id)
        ->where('active',1)
        ->with('menu')
        ->firstOrFail();
    }

    public function more($id)
    {
        return Product::select('id', 'name', 'price', 'price_sale', 'thumb','menu_id')
            ->where('active', 1)
            ->where('id', '!=', $id)
            ->orderByDesc('id')
            ->limit(8)
            ->get();
    }

    public function moremn($menuid)
    {
        return Product::select('id', 'name', 'price', 'price_sale', 'thumb', 'menu_id')
            ->where('active', 1)
            ->where('menu_id', $menuid)
            ->orderByDesc('id')
            ->limit(8)
            ->get();
    }

    public function click()
    {
        return Product::select('id', 'name', 'price', 'price_sale', 'thumb','menu_id')
            ->where('active', 1)
            ->orderByDesc('click')
            ->limit(8)
            ->get();
    }

    public function update_click($id)
    {
        $product = Product::find($id);
        $product->click = $product->click + 1;
        $product->save();
    }
}