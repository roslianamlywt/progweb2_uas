@extends ('layouts.app')

@section('content')
    <div class="container">

        <div class="row">
        <div class="col-md-12 mb-3">
            <h2>Daftar Barang</h2>
            <a class="btn btn-success" href="{{ route('Barang.create') }}">
                Tambah Barang
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
        <th>ID Barang</th>
        <th>Kode Barang</th>
        <th>Nama Barang</th>
        <th>Harga Barang</th>
        <th>Stock Barang</th>
    </tr>
    @foreach ($data_barang as $key =>$barang)
        <tr>
            <td>
                <form action="{{ route('Barang.update', $barang->id_barang) }}" method="post">
                     <a class="btn btn-primary" href="{{ route('Barang.edit', $barang->id_barang) }}">
                        Edit
                    </a>

                    @csrf
                    @method ("DELETE")
                    <button type="submit" class="btn btn-danger"
                        onclick="return confirm('Hapus data Barang:{{$barang->id_barang}}?')">
                        Delete
                    </button>|

                </form>
            </td>
            <td>{{$barang->id_barang}}  </td>
            <td>{{$barang->kode_barang}}  </td>
            <td>{{$barang->nama_barang}}</td>
            <td>{{$barang->harga_barang}}</td>
            <td>{{$barang->stock_barang}}</td>
        </tr>
    @endforeach
    </table>

    Halaman : {{ $data_barang->currentPage()}} <br/>
    Jumlah Data : {{ $data_barang->total() }} <br/>
    Data Per Halaman : {{ $data_barang->perPage()}} <br/>
    {{-- Pagination --}}
    <div class="d-flex justify-content-center">
        {!! $data_barang->links() !!}
    </div>
    </div>
@endsection
