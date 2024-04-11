<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TypeController extends Controller
{
    public function getAllTypes() {
        try {
            $types = DB::select('CALL getTypes');
            return response()->json($types); 
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }



    public function getOneType(Request $request) {
        $id = $request->input('id');
        try {
            $type = DB::select('CALL getOneType(?)', [$id]);
            return response()->json($type);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function createType(Request $request) {
        $name = $request->input('name');
        try {
            DB::statement('CALL createType(?)', [$name]);
            return response()->json(['message' => 'Type created successfully'], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}





