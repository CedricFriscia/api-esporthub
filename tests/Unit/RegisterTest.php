<?php

namespace Tests\Unit;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    /**
     * A basic unit test example.
     */
    public function test_user_success_registration() {
  
        $userData = [
            'name' => "booyaaaa",
            'email' => "ddeed@dedede.fr",
            'password' => 'password' 
        ];
   
        $response = $this->post('/register', $userData);
   
        $response->assertStatus(200);
        $response->assertJson([
            'message' => 'User Created'
        ]);
   
        $this->assertDatabaseHas('users', [
            'email' => $userData['email'],
            'name' => $userData['name']
        ]);
   
        $user = User::where('email', $userData['email'])->first();
        $this->assertTrue(Hash::check('password', $user->password));
    }
 

    public function test_user_missing_input_registration() {
        $userData = [
            'name' => "booyaaa",
            'email' => "",
            'password' => 'password' 
        ];
 
        $response = $this->post('/register', $userData);
   
        $response->assertStatus(400);
        $response->assertJson([
            'message' => 'Failed to create user'
        ]);
    }

    public function test_user_create_same_registration() {
     
        $firstUserData = [
            'name' => "booyaaa",
            'email' => "ddeed@dedede.fr",
            'password' => 'password' 
        ];
 
        $response = $this->post('/register', $firstUserData);
 
        $response->assertStatus(200);
   
        $secondUserData = [
            'name' => "booyaaa",
            'email' => "ddeed@dedede.fr",
            'password' => 'password' 
        ];
   
        $response = $this->post('/register', $secondUserData);
   
        $response->assertStatus(400);
   
        $response->assertJson([
            'message' => 'Failed to create user',
            'error' => 'User with this email already exists'
        ]);
    }
}
