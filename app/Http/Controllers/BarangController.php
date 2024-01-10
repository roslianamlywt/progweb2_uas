<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Pagination\Paginator;
use App\Models\Barang;

class BarangController extends Controller
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
        $data['data_barang']=Barang::orderBy('id_barang')->paginate(5);

        Paginator::useBootstrap();

        return view('barang.index',$data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('Barang.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
            $request->validate([
                'id_barang'=>'required',
                'kode_barang'=>'required',
                'nama_barang'=>'required',
                'harga_barang'=>'required',
                'stock_barang'=>'required'
            ]);

            $barang=new Barang();

            $barang->id_barang=$request->id_barang;
            $barang->kode_barang=$request->kode_barang;
            $barang->nama_barang=$request->nama_barang;
            $barang->harga_barang=$request->harga_barang;
            $barang->stock_barang=$request->stock_barang;

            $barang->save();

            return redirect ()->route('barang.index')
                ->with ('success','Data barang ID:'.$request->id_barang. 'Berhasil dibuat!.');
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
    public function edit(Barang $barang)
    {

        return view('barang.edit',['barang'=>$barang]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, int $id_barang)
    {
        $request->validate([
            'kode_barang' => 'required',
            'nama_barang' => 'required',
            'harga_barang' => 'required',
            'stock_barang' => 'required'
        ]);

        $barang = Barang::find($id_barang);

        $barang->kode_barang = $request->kode_barang;
        $barang->nama_barang = $request->nama_barang;
        $barang->harga_barang = $request->harga_barang;
        $barang->stock_barang = $request->stock_barang;

        $barang->save();

        return redirect()->route('barang.index')
            ->with('success', 'Data Barang :' . $id_barang . ' berhasil diperbarui!.');
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Barang $barang)
    {
        $barang->delete();

        return redirect()->route('barang.index')
        ->with('success','Data Barang:'.$barang->id_barang.'berhasil dihapus!.');
    }
}
