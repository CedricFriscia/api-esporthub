<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class UserController extends Controller
{
    public function getAllUsers() {
        try {
            $users = DB::select('CALL getUsers');
            return response()->json($users); 
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }



    public function getOneUser(Request $request) {
        $id = $request->input('id');
        try {
            $user = DB::select('CALL getOneUser(?)', [$id]);
            return response()->json($user);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
