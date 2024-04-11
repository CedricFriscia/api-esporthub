<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class RoleController extends Controller
{
    public function getAllRoles() {
        try {
            $roles = DB::select('CALL getRoles');
            return response()->json($roles); 
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }



    public function getOneRole(Request $request) {
        $id = $request->input('id');
        try {
            $role = DB::select('CALL getOneRole(?)', [$id]);
            return response()->json($role);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
