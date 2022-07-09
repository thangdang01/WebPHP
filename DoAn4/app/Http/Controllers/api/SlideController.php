<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slide;

class SlideController extends Controller
{
    public function index()
    {
        $db = slide::all();
        return json_encode($db);
    }

    public function Get(){
        return Slide::all();
    }

    public function store(Request $request)
    {
        $db = new slide();
        // $db=$request->all();
        $db->id = $request->id;
        $db->id_slide = $request->id_slide;
        $db->image = $request->image;
        $db->save();
        return $db;
    }

    public function update(request $request,$id){
        $db = slide::findorFail($id);
        $db->tenslide = $request->tenslide;
        $db->image = $request->image;
        $db->save();
        return $db;
    }

    public function destroy($id){
        slide::findOrFail($id)->delete();
        return "Đã xóa";
    }

    public function show($id)
    {
        return slide::find($id);
    }
}
