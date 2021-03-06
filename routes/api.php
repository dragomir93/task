<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ArticleController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Articles
Route::get('/getAllArticles', [ArticleController::class, 'index']);
Route::get('/article/{id}', [ArticleController::class, 'show']);
Route::post('/add/article',[ArticleController::class,'store']);
Route::put('/update/article/{id}',[ArticleController::class,'update']);
Route::delete('/delete/article/{id}',[ArticleController::class,'delete']);
