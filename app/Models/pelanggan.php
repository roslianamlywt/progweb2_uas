<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pelanggan extends Model
{
    use HasFactory;

    protected $table='Pelanggan';
    protected $primarykey='id_pelanggan';
    protected $keyType='string';
    public $incrementing=false;
    public $timestamps=true;

    protected $fillable=[
        'nama_pelanggan',
        'alamat',
    ];
}
