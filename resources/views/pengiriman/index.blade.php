@extends ('layouts.app')

@section('content')
    <div class="container">

        <div class="row">
        <div class="col-md-12 mb-3">
            <h2>Daftar Pengiriman</h2>
            <a class="btn btn-success" href="{{ route('Pengiriman.create') }}">
                Tambah Pengiriman
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
        <th>ID Pengiriman</th>
        <th>Alamat</th>
    </tr>
    @foreach ($data_pengiriman as $key =>$pengiriman)
        <tr>
            <td>
                <form action="{{ route('Pengiriman.destroy', $pengiriman->id_pengiriman) }}" method="post">
                     <a class="btn btn-primary" href="{{ route('Pengiriman.edit', $pengiriman->id_pengiriman) }}">
                        Edit
                    </a>

                    @csrf
                    @method ("DELETE")
                    <button type="submit" class="btn btn-danger"
                        onclick="return confirm('Hapus data Pelanggan:{{$pengiriman->id_pengiriman}}?')">
                        Delete
                    </button>|

                </form>
            </td>
            <td>{{$pengiriman->id_pengiriman}}  </td>
            <td>{{$pengiriman->tanggal_pengiriman}}</td>
            <td>{{$pengiriman->alamat}}</td>
        </tr>
    @endforeach
    </table>

    Halaman : {{ $data_pengiriman->currentPage()}} <br/>
    Jumlah Data : {{ $data_pengiriman->total() }} <br/>
    Data Per Halaman : {{ $data_pengiriman->perPage()}} <br/>
    {{-- Pagination --}}
    <div class="d-flex justify-content-center">
        {!! $data_pengiriman->links() !!}
    </div>
    </div>
@endsection
