<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array<int, string>
     */
    protected $except = [
        'page/create',
        'article/create',
        'link/create',
        'right/create',
        'role/create',
        'type/create',
        'user/create',
        'register',
        'login',
    ];
}
