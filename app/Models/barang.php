<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class barang extends Model
{
    use HasFactory;

    protected $table='Barang';
    protected $primarykey='id_barang';
    protected $keyType='string';
    public $incrementing=false;
    public $timestamps=true;

    protected $fillable=[
        'kode_barang',
        'nama_barang',
        'harga_barang',
        'stock_barang',
    ];
}
