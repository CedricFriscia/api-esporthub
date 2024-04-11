<?php

namespace App\Http\Controllers;

use Illuminate\Http\request;
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
}
