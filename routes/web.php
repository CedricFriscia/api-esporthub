<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\RightController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\LinkController;
use App\Http\Controllers\TypeController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum'])->group(function () {

    Route::get('/articles', [ArticleController::class, 'getAllArticles']); 
    Route::get('/article', [ArticleController::class, 'getOneArticle']); 
    Route::post('/article/create', [ArticleController::class, 'createArticle']); 

    Route::get('/pages', [PageController::class, 'getAllPages']);
    Route::get('/page', [PageController::class, 'getOnePage']); 
    Route::post('/page/create', [PageController::class, 'createPage']); 

    Route::get('/users', [UserController::class, 'getAllUsers']);
    Route::get('/user', [UserController::class, 'getOneUser']);

    Route::get('/types', [TypeController::class, 'getAllTypes']);
    Route::get('/type', [TypeController::class, 'getOneType']);
    Route::post('/type/create', [TypeController::class, 'createType']); 

    
    Route::get('/links', [LinkController::class, 'getAllLinks']);
    Route::get('/link', [LinkController::class, 'getOneLink']);
    Route::post('/link/create', [LinkController::class, 'createLink']); 

   
});

Route::post('/register', [AuthController::class, 'register']);
Route::post('login',[AuthController::class,'login']);
Route::post('logout',[AuthController::class,'logout']);


Route::get('/rights', [RightController::class, 'getAllRights']);
Route::get('/right', [RightController::class, 'getOneRight']);
Route::post('/right/create', [RightController::class, 'createRight']); 

Route::get('/roles', [RoleController::class, 'getAllRoles']);
Route::get('/role', [RoleController::class, 'getOneRole']);
Route::post('/role/create', [RoleController::class, 'createRole']); 



// ROUTE NEED TO BE DONE 
















