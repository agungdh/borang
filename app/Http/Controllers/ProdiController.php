<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProdiController extends Controller
{

    var $data;

    function __construct() {
        $this->data = [];
    }

    function index($id_fakultas)
    {
        $this->data['tabel'] = [];
        $this->data['fakultas'] = DB::table('fakultas')->where(['id_fakultas' => $id_fakultas])->first();

        foreach (DB::table('prodi')->where(['id_fakultas' => $id_fakultas])->get() as $item) {
            $objData = new \stdClass();

            $objData->id_prodi = $item->id_prodi;
            $objData->nama_prodi = $item->nama_prodi;

            $this->data['tabel'][] = $objData;
        }

        return view('prodi.index', $this->data);
    }

    function create($id_fakultas)
    {
        return view('prodi.tambah', $this->data);   
    }

    function store(Request $request, $id_fakultas)
    {
        foreach ($request->input('data') as $key => $value) {
            switch ($key) {
                default:
                    $data[$key] = $value;
                    break;
            }
        }

        DB::table('prodi')->insert($data);

        return redirect(action('ProdiController@index'));
    }

    function edit($id_prodi)
    {
        $this->data['prodi'] = DB::table('prodi')
                                        ->where(['id_prodi' => $id_prodi])
                                        ->first();

        return view('prodi.ubah', $this->data);
    }

    function update(Request $request, $id_prodi)
    {
        foreach ($request->input('data') as $key => $value) {
            switch ($key) {
                default:
                    $data[$key] = $value;
                    break;
            }
        }

        DB::table('prodi')
            ->where('id_prodi', $id_prodi)
            ->update($data);

        return redirect(action('ProdiController@index'));
    }

    function destroy($id_prodi)
    {
        DB::table('prodi')
            ->where(['id_prodi' => $id_prodi])
            ->delete();

        return redirect(action('ProdiController@index'));
    }
}
