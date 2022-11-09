<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\Slider\SliderService;

class MainController extends Controller
{
    protected $slider;

    public function __construct(SliderService $slider)
    {
        $this->slider = $slider;
    }

    public function index()
    {
        return view('main',[
           'title' => 'Shop áo quần Quang Huy',
           'sliders' => $this->slider->show()
           
        ]);
    }
}
