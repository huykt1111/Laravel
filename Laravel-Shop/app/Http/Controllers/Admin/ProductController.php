<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\Product\ProductAdminService;
use Illuminate\Http\JsonResponse;
use App\Http\Requests\Product\ProductRequest;
use App\Models\Product;

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

    public function show(Product $product)
    {
        return view('admin.product.edit',[
            'title' => 'Chỉnh sửa sản phẩm',
            'product' => $product,
            'menus' => $this->productAdminService->getMenu()
        ]);
    }
   
    public function update(Request $request, Product $product)
    {
        $result = $this->productAdminService->update($request,$product);

        if($result)
        {
            return redirect('/admin/products/list');
        }
        
        return redirect()->back();
    }

    public function destroy(Request $request)
    {
        $result = $this->productAdminService->delete($request);
        if($result)
        {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công sản phẩm'
            ]);
        }

        return response()->json([
            'error' => true
        ]);
    }
}
