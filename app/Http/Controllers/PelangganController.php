<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use App\Models\pelanggan;

class PelangganController extends Controller
{
    /**
     * Display a listing of the resource.
     */

     public function __construct()
     {
         $this->middleware('auth');
     }

    public function index()
    {
         $data['data_pelanggan']=Pelanggan::orderBy('id_pelanggan')->paginate(5);

        Paginator::useBootstrap();

        return view('Pelanggan.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('Pelanggan.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id_pelanggan'=>'required',
            'nama_pelanggan'=>'required',
            'alamat'=>'required',
        ]);

        $Pelanggan=new Pelanggan();

        $Pelanggan->id_pelanggan=$request->id_pelanggan;
        $Pelanggan->nama_pelanggan=$request->nama_pelanggan;
        $Pelanggan->alamat=$request->alamat;

        $Pelanggan->save();

        return redirect ()->route('Pelanggan.index')
            ->with ('success','Data Pelanggan:'.$request->nim. 'Berhasil dibuat!.');
    }


    public function edit(Pelanggan $pelanggan)
    {

        return view('Pelanggan.edit',['pelanggan'=>$pelanggan]);
    }
    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_pelanggan)
    {
        $request->validate([
            'id_pelanggan'=>'required',
            'nama_pelanggan'=>'required',
            'alamat'=>'required',
        ]);

        $pelanggan = Pelanggan::find($id_pelanggan);

        $pelanggan->id_pelanggan=$request->id_pelanggan;
        $pelanggan->nama_pelanggan=$request->nama_pelanggan;
        $pelanggan->alamat=$request->alamat;
        $pelanggan->save();

        return redirect()->route('Pelanggan.index')
            ->with('success', 'Data Pelanggan:' .$request->$id_pelanggan . ' berhasil diperbarui!.');

    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pelanggan $pelanggan)
    {
        $pelanggan->delete();

        return redirect()->route('Pelanggan.index')
        ->with('success','Data Pelanggan :'. $pelanggan->id_pelanggan.'berhasil dihapus!.');

    }
}
