<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class LoginTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_successful_login(): void
    {

        $userData = [
            'name' => 'test',
            'email' => 'test@test.fr',
            'password' => 'test',
        
        ];


        $response = $this->post('/login', $userData);

        $response->assertStatus(200);

    }
}
