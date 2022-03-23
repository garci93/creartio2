<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PostController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Route::get('/welcomeoriginal', function () {
    return view('welcomeoriginal');
});

Route::get('/user/{id}', [UserController::class, 'show']);


 
Route::resource('posts', PostController::class);

Route::get('/greeting', function () {
    return view('greeting', ['name' => 'James']);
});