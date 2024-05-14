<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
// use Illuminate\Support\Facades\DB; 


class AuthController extends Controller
{
    public function register(Request $request) {
        $name = $request->input('name');
        $email = $request->input('email');
        $password = $request->input('password');
    
        try {
            $existingUser = User::where('email', $email)->first();
            if ($existingUser) {
                return response()->json([
                    'message' => 'Failed to create user',
                    'error' => 'User with this email already exists'
                ], 400);
            }
    
            User::create([
                'name' => $name,
                'email' => $email,
                'password' => Hash::make($password),
            ]);
            
            return response()->json([
                'message' => 'User Created'
            ]);
        }
        catch (\Exception $e) {
            return response()->json([
                'message' => 'Failed to create user',
                'error' => $e->getMessage()
            ], 400); 
        }
    }
    
    
    

    public function login(Request $request){

        $name = $request->input('name');
        $password = $request->input('password');
     
        $user = User::where('name',$name)->first();
        if(!$user || !Hash::check($password,$user->password)){
            return response()->json([
                'message' => 'Invalid Credentials'
            ],401);
        }
        $token = $user->createToken($user->name.'-AuthToken')->plainTextToken;
        return response()->json([
            'message' => 'Successfully Connected',
            'access_token' => $token,
        ]);
        
    }

    public function logout()
    {
        if (auth()->user()) {
            auth()->user()->tokens()->delete();
        }
    
        return response()->json([
            "message" => "logged out"
        ]);
    }
    

    
 
}
