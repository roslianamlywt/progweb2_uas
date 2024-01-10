@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12 mb-3">
                <h2>Edit Pelanggan</h2>
            </div>
        </div>

        @if (session('status'))
            <div class="alert alert-success mb-1 mt-1">
                {{ session('status') }}
            </div>
        @endif

        <form action="{{ route('Pelanggan.update', $pelanggan->id_pelanggan) }}" method="POST" class="border border-default col-md-6 p-2">
            @csrf
            @method('PUT')

            <div class="mb-3">
                <label for="id_pelanggan">ID Pelanggan:</label>
                <input type="number" name="id_pelanggan" id="id_pelanggan" class="form-control" value="{{ old('id_pelanggan', $pelanggan->id_pelanggan) }}" readonly>
                @error('id_pelanggan')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="nama_pelanggan">Nama Pelanggan:</label>
                <input type="text" name="nama_pelanggan" id="nama_pelanggan" class="form-control" value="{{ old('nama_pelanggan', $pelanggan->nama_pelanggan) }}">
                @error('nama_pelanggan')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <div class="mb-3">
                <label for="alamat">Alamat:</label>
                <input type="text" name="alamat" id="alamat" class="form-control" value="{{ old('angkaalamattan', $pelanggan->alamat) }}">
                @error('alamat')
                    <div class="text-danger">{{ $message }}</div>
                @enderror
            </div>

            <button type="submit" class="btn btn-primary ml-3">Submit</button>
            <a class="btn btn-secondary" href="{{ route('Pelanggan.index') }}">Kembali</a>
        </form>
    </div>
@endsection
