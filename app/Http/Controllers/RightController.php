<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class RightController extends Controller
{
    public function getAllRights() {
        try {
            $right = DB::select('CALL getRights');
            return response()->json($right); 
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }



    public function getOneRight(Request $request) {
        $id = $request->input('id');
        try {
            $right = DB::select('CALL getOneRight(?)', [$id]);
            return response()->json($right);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
