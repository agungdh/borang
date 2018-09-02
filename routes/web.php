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

Route::get('fakultas/{id_fakultas}/prodi', 'ProdiController@index');
Route::get('prodi/{id_fakultas}/create', 'ProdiController@create');
Route::post('prodi/{id_fakultas}', 'ProdiController@store');
Route::get('prodi/{id_fakultas}/edit', 'ProdiController@edit');
Route::put('prodi/{id_fakultas}', 'ProdiController@update');
Route::delete('prodi/{id_fakultas}', 'ProdiController@destroy');

//create hash password
Route::get('hash/{string}', function($string) {
	echo Hash::make($string);
});

Route::get('testprepare', function() {
	$i = 0;
	
	$butir = DB::table('v_butir')
			->get();

	foreach ($butir as $item) {
		$data[$i]['id_borang_akreditasi'] = 1;
		$data[$i]['id_butir'] = $item->id_butir;

		$i++;
	}

	$substandar = DB::table('v_substandar')
			->get();

	foreach ($substandar as $item) {
		$data[$i]['id_borang_akreditasi'] = 1;
		$data[$i]['id_substandar'] = $item->id_substandar;

		$i++;
	}

	$standar = DB::table('v_standar')
			->get();

	foreach ($standar as $item) {
		$data[$i]['id_borang_akreditasi'] = 1;
		$data[$i]['id_standar'] = $item->id_standar;

		$i++;
	}

	DB::table('borang')
		->insert($data);
});