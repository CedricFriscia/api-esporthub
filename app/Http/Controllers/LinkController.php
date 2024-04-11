<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LinkController extends Controller
{
    public function getAllLinks() {
        try {
            $links = DB::select('CALL getLinks');
            return response()->json($links); 
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }



    public function getOneLink(Request $request) {
        $id = $request->input('id');
        try {
            $link = DB::select('CALL getOneLink(?)', [$id]);
            return response()->json($link);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function createLink(Request $request) {
        $url = $request->input('url');
        try {
            DB::statement('CALL createLink(?)', [$url]);
            return response()->json(['message' => 'Link created successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
