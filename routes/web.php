<?php

use Illuminate\Support\Facades\Route;

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

Auth::routes();

use App\Http\Controllers\BarangController;

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('Barang', App\Http\Controllers\BarangController::class);

Route::resource('Pelanggan', App\Http\Controllers\PelangganController::class);

Route::resource('Pengiriman', App\Http\Controllers\PengirimanController::class);

Route::put('/Barang/{barang}', 'BarangController@update')->name('Barang.update');

