<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SubuserController;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    
    // user
    Route::resource('users', UserController::class)->except(['show']);
    Route::get('/users/list', [UserController::class, 'list'])->name('users.list');

    Route::resource('sub-users', SubuserController::class)->except(['show']);
    Route::get('/sub-users/list', [SubuserController::class, 'list'])->name('sub-users.list');

    // category
    Route::resource('categories', CategoryController::class)->except(['show']);
    Route::get('/categories/list', [CategoryController::class, 'list'])->name('categories.list');

    // product
    Route::resource('products', ProductController::class)->except(['show']);
    Route::get('/products/list', [ProductController::class, 'list'])->name('products.list');

});

require __DIR__.'/auth.php';
