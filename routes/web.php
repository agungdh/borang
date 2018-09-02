<?php

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

Route::get('/', 'WelcomeController@index');
Route::post('login', 'WelcomeController@login');
Route::get('logout', 'WelcomeController@logout');

Route::get('profil', 'ProfilController@index');
Route::put('profil/ubah', 'ProfilController@ubah');
Route::put('profil/gantipassword', 'ProfilController@gantiPassword');

Route::resource('fakultas', 'FakultasController');

//create hash password
Route::get('hash/{string}', function($string) {
	echo Hash::make($string);
});