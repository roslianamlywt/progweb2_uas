@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-3">
                <h2>Edit Barang</h2>
            </div>
        </div>

        @if (session('status'))
            <div class="alert alert-success mb-1 mt-1">
                {{ session('status') }}
            </div>
        @endif

        <form action="{{ route('Barang.update', $barang->barang) }}" method="POST" class="border border-default col-md-6 p-2">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="id_barang">ID Barang:</label>
                <input type="text" name="id_barang" id="id_barang" class="form-control" value="{{ old('id_barang', $barang->id_barang) }}" readonly>
                @error('id_barang')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="kode_barang">Kode Barang:</label>
                <input type="number" name="kode_barang" id="kode_barang" class="form-control" value="{{ old('kode_barang', $barang->kode_barang) }}">
                @error('kode_barang')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="nama_barang">Nama Barang:</label>
                <input type="text" name="nama_barang" id="nama_barang" class="form-control" value="{{ old('nama_barang', $barang->nama_barang) }}">
                @error('nama_barang')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="harga_barang">Harga Barang:</label>
                <input type="number" name="harga_barang" id="harga_barang" class="form-control" value="{{ old('harga_barang', $barang->harga_barang) }}">
                @error('harga_barang')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="stock_barang">Stock Barang:</label>
                <input type="number" name="stock_barang" id="stock_barang" class="form-control" value="{{ old('stock_barang', $barang->stock_barang) }}">
                @error('stock_barang')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <button type="submit" class="btn btn-primary ml-3">Submit</button>
            <a class="btn btn-secondary" href="{{ route('Barang.index') }}">Kembali</a>
        </form>
    </div>
@endsection
