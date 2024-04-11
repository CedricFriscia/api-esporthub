<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class PageController extends Controller
{
    public function getAllPages() {
        try {
            $pages = DB::select('CALL getPages');
            return response()->json($pages); 
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

   
    public function getOnePage(Request $request) {
        $id = $request->input('id');
        try {
            $page = DB::select('CALL getOnePage(?)', [$id]);
            return response()->json($page);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function createPage(Request $request) {
        @csrf
        $name = $request->input('name');
        $header = $request->input('header');
        $description = $request->input('description');
        try {
            DB::statement('CALL createPage(?, ?, ?)', [$name, $header, $description]);
            return response()->json(['message' => 'Page created successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
    
}
