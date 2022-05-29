<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\PagesResources;
use App\Models\Slider;
use App\Models\Services;
use Illuminate\Http\Request;

class PageController extends Controller
{

    public function pageId($id)
    {
        $page = Services::find($id);

        return [
            'status' => true ,
            'data' => new PagesResources($page),
            'related'=> request()->include_cats ? Services::where('category_id', $page->category_id)->where('id', '!=', $page->id)->get() : []
        ];
    }

    public function mainPage()
    {
        $project  = Services::paginate(6); //limit(8)->get()
        return PagesResources::collection($project);
        return ['status' => true , 'data' => ''];


//        $categories = Slider::whereHas('services')->get();
//        $categories = ['status' => true, 'data' => $categories];

//        return
//            [
//                'services' => $project,
////                'page_categories' => $categories
//            ];

    }
}
