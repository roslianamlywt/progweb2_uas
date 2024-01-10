<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use App\Models\pengiriman;

class PengirimanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['data_pengiriman']=Pengiriman::orderBy('id_pengiriman')->paginate(5);

        Paginator::useBootstrap();

        return view('Pengiriman.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     */

     public function __construct()
     {
         $this->middleware('auth');
     }

    public function create()
    {
        return view('Pengiriman.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'id_pengiriman'=>'required',
            'tanggal_pengiriman'=>'required',
            'alamat'=>'required'
        ]);

        $pengiriman=new Pengiriman();

        $pengiriman->id_pengiriman=$request->id_pengiriman;
        $pengiriman->tanggal_pengiriman=$request->tanggal_pengiriman;
        $pengiriman->alamat=$request->alamat;

        $pengiriman->save();

        return redirect ()->route('Pengiriman.index')
            ->with ('success','Data Pengiriman:'.$request->id_pengiriman. 'Berhasil dibuat!.');
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
    public function edit(Pengiriman $pengiriman)
    {
        return view('Pengiriman.edit',['pengiriman'=>$pengiriman]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id_pengiriman)
    {
        $request->validate([
            'id_pengiriman'=>'required',
            'tanggal_pengiriman'=>'required',
            'alamat'=>'required'
        ]);

        $pengiriman = Pengiriman::find($id_pengiriman);

        $pengiriman->id_pengiriman=$request->id_pengiriman;
        $pengiriman->tanggal_pengiriman=$request->tanggal_pengiriman;
        $pengiriman->alamat=$request->alamat;
        $pengiriman->save();

        return redirect()->route('Pengiriman.index')
            ->with('success', 'Data Pengiriman:' . $id_pengiriman . ' berhasil diperbarui!.');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pengiriman $pengiriman)
    {
        $pengiriman->delete();

        return redirect()->route('Pengiriman.index')
        ->with('success','Data Pengiriman:'.$pengiriman->id_pengiriman.'berhasil dihapus!.');

    }
}
