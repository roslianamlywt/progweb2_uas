@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 mb-3">
            <h2>Tambah Pengiriman</h2>
        </div>
    </div>

    @if (session('status'))
    <div class="alert alert-success mb-1 mt-1">
        {{ session('status') }}
    </div>
    @endif

    <form action="{{ route('Pengiriman.store') }}" method="POST" class="border border-default col-md-6 p-2">
        @csrf

        <div class="mb-3">
            <label for="id_pengiriman">ID Pengiriman:</label>
            <input type="text" name="id_pengiriman" id="id_pengiriman" class="form-control">

            @error('id_pengiriman')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="tanggal_pengiriman">Tanggal Pengiriman:</label>
            <input type="text" name="tanggal_pengiriman" id="tanggal_pengiriman" class="form-control">

            @error('tanggal_pengiriman')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>


        <div class="mb-3">
            <label for="alamat">Alamat Pengiriman:</label>
            <input type="text" name="alamat" id="alamat" class="form-control">

            @error('alamat')
            <div class="text-danger">{{ $message }}</div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
        <a class="btn btn-secondary" href="{{route('Pengiriman.index')}}">
            Kembali
        </a>
    </form>
</div>
@endsection
