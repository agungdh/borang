<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FakultasController extends Controller
{

    var $data;

    function __construct() {
        $this->data = [];
    }

    function index()
    {
        $this->data['tabel'] = [];

        foreach (DB::table('fakultas')->get() as $item) {
            $objData = new \stdClass();

            $objData->id_fakultas = $item->id_fakultas;
            $objData->nama_fakultas = $item->nama_fakultas;

            $this->data['tabel'][] = $objData;
        }

        return view('fakultas.index', $this->data);
    }

    function create()
    {
        return view('fakultas.tambah', $this->data);   
    }

    function store(Request $request)
    {
        foreach ($request->input('data') as $key => $value) {
            switch ($key) {
                default:
                    $data[$key] = $value;
                    break;
            }
        }

        DB::table('fakultas')->insert($data);

        return redirect(action('FakultasController@index'));
    }

    function edit($id_fakultas)
    {
        $this->data['fakultas'] = DB::table('fakultas')
                                        ->where(['id_fakultas' => $id_fakultas])
                                        ->first();

        return view('fakultas.ubah', $this->data);
    }

    function update(Request $request, $id_fakultas)
    {
        foreach ($request->input('data') as $key => $value) {
            switch ($key) {
                default:
                    $data[$key] = $value;
                    break;
            }
        }

        DB::table('fakultas')
            ->where('id_fakultas', $id_fakultas)
            ->update($data);

        return redirect(action('FakultasController@index'));
    }

    function destroy($id_fakultas)
    {
        DB::table('fakultas')
            ->where(['id_fakultas' => $id_fakultas])
            ->delete();

        return redirect(action('FakultasController@index'));
    }
}
