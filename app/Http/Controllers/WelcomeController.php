<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class WelcomeController extends Controller
{
	function index(Request $request) {
		if (session('login') == true) {
			return view('welcome.index');
		} else {
			return view('template.login');
		}
	}

	function login(Request $request) {
		$username = $request->input('username');
		$password = $request->input('password');

		$select_user = DB::table('user')->where(['username' => $username])->first();
		
		if ($select_user != null && Hash::check($password, $select_user->password)) {
			$array_data_user = array(
				'id_user'  => $select_user->id_user,
				'nama_user'  => $select_user->nama_user,
				'username'  => $select_user->username,
				'level'  => $select_user->level,
				'id_prodi'  => $select_user->id_prodi,
				'login'  => true
			);

			session($array_data_user);
			
			echo json_encode(['login' => true]);
		} else {
			$data['header'] = "ERROR !!!";
			$data['pesan'] = "Password Salah !!!";
			$data['status'] = "error";
			
			$data['login'] = false;

			echo json_encode($data);
		}
	}

	function logout() {
		session()->flush();

		return redirect()->action('WelcomeController@index');
	}
}
