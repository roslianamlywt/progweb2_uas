@extends ('layouts.app')

@section('content')
    <div class="container">

        <div class="row">
        <div class="col-md-12 mb-3">
            <h2>Daftar Pelanggan</h2>
            <a class="btn btn-success" href="{{ route('Pelanggan.create') }}">
                Tambah Pelanggan
            </a>
            </div>
        </div>

       @if ($message=Session::get ('success'))
            <div class="alert alert-success">
                <p>{{$message}}</p>
            </div>
        @endif

<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>#</th>
        <th>ID Pelanggan</th>
        <th>Nama Pelanggan</th>
        <th>Alamat</th>
    </tr>
    @foreach ($data_pelanggan as $key =>$pelanggan)
        <tr>
            <td>
                <form action="{{ route('Pelanggan.destroy', $pelanggan->id_pelanggan) }}" method="post">
                     <a class="btn btn-primary" href="{{ route('Pelanggan.edit', $pelanggan->id_pelanggan) }}">
                        Edit
                    </a>

                    @csrf
                    @method ("DELETE")
                    <button type="submit" class="btn btn-danger"
                        onclick="return confirm('Hapus data Pelanggan:{{$pelanggan->id_pelanggan}}?')">
                        Delete
                    </button>|

                </form>
            </td>
            <td>{{$pelanggan->id_pelanggan}}  </td>
            <td>{{$pelanggan->nama_pelanggan}}</td>
            <td>{{$pelanggan->alamat}}</td>
        </tr>
    @endforeach
    </table>

    Halaman : {{ $data_pelanggan->currentPage()}} <br/>
    Jumlah Data : {{ $data_pelanggan->total() }} <br/>
    Data Per Halaman : {{ $data_pelanggan->perPage()}} <br/>
    {{-- Pagination --}}
    <div class="d-flex justify-content-center">
        {!! $data_pelanggan->links() !!}
    </div>
    </div>
@endsection
