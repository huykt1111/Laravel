<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\Product\ProductAdminService;
use Illuminate\Http\JsonResponse;
use App\Http\Requests\Product\ProductRequest;

class ProductController extends Controller
{
    protected $productAdminService;

    public function __construct(ProductAdminService $productAdminService)
    {
        $this->productAdminService = $productAdminService;
    }

    public function create()
    {
        return view('admin.product.add',[
            'title' => 'Thêm sản phẩm mới',
            'menus' => $this->productAdminService->getMenu()
        ]);
    }

    public function index()
    {
        return view('admin.product.list',[
            'title' => 'Danh sách sản phẩm',
            'products' => $this->productAdminService->get()
        ]);
    }

    public function store(ProductRequest $request)
    {
        $this->productAdminService->insert($request);

        return redirect()->back();
    }

    public function show($id)
    {
        //
    }

    
    public function edit($id)
    {
        //
    }

   
    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
