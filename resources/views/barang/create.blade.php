@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 mb-3">
            <h2>Tambah barang</h2>
        </div>
    </div>

    @if (session('status'))
    <div class="alert alert-success mb-1 mt-1">
        {{ session('status') }}
    </div>
    @endif

    <form action="{{ route('Barang.store') }}" method="POST" class="border border-default col-md-6 p-2">
        @csrf

        <div class="mb-3">
            <label for="id_barang">id_barang:</label>
            <input type="text" name="id_barang" id="id_barang" class="form-control">

            @error('id_barang')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="kode_barang">Kode Barang:</label>
            <input type="text" name="kode_barang" id="kode_barang" class="form-control">

            @error('kode_barang')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="nama_barang">Nama Barang:</label>
            <input type="text" name="nama_barang" id="nama_barang" class="form-control">
            @error('nama_barang')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="harga_barang">Harga Barang:</label>
            <input type="text" name="harga_barang" id="harga_barang" class="form-control">
            @error('harga_barang')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="stock_barang">Stock Barang:</label>
            <input type="text" name="stock_barang" id="stock_barang" class="form-control">
            @error('stock_barang')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-secondary" href="{{route('Barang.index')}}">
            Kembali
        </a>
    </form>
</div>
@endsection
