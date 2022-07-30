<?php

use App\Http\Controllers\TestController;
use App\Http\Controllers\TodolistController;
use App\Http\Controllers\QueryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PhoneController;
use App\Http\Controllers\RelationController;
use App\Http\Controllers\ContactController;

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
Route::view("/","welcome")->name("myhome");
Route::view("/w","welcome");
// Route::any('/', function () {
//     return view('welcome');
// });
// Route::any('/', function () {
//     //
// });

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');


Route::get('/test', [TestController::class,'index'])->name("t");


Route::get('/posts/{post}/comments/{comment?}',[TestController::class,'postcomment'])
->where('post', '[0-9]+')
->where('comment', '[0-9]+')
->name("postcomment");
Route::redirect('/here', url("test"));
//query builder
Route::get('/query', [QueryController::class,'index']);
Route::get('/query/find/{id}', [QueryController::class,'find']);
Route::get('/query/list/insert', [QueryController::class,'randominsert']);
Route::get('/query/list/update/{id}', [QueryController::class,'update']);
Route::get('/query/list/delete/{id}', [QueryController::class,'delete']);
//important
Route::prefix("test")->middleware(['auth'])->group(function () {
    Route::get('/hi', [TestController::class,'hi']);
    Route::get('/querytest', [TestController::class,'querytest']);
    Route::get('/sq/{number}', [TestController::class,'sq'])->name("square");
    Route::resource("/todolist",TodolistController::class);
    Route::get("/listcreateslug",[TodolistController::class,'createslug']);
});

Route::resource("/phone",PhoneController::class);
Route::get("/slugphone",[PhoneController::class,'slugall']);
//relations
Route::get("/onetoone",[RelationController::class,'onetoone']);
//contact
Route::get("/contact",[ContactController::class,'create']);
Route::post("/contact",[ContactController::class,'store'])->middleware('auth');








require __DIR__.'/auth.php';

Route::fallback(function () {
    Route::get('/notfound', [TestController::class,'notfound']);
});
