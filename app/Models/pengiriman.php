<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class pengiriman extends Model
{
    use HasFactory;
    protected $table='Pengiriman';
    protected $primarykey='id_pengiriman';
    protected $keyType='string';
    public $incrementing=false;
    public $timestamps=true;

    protected $fillable=[
        'tanggal_pengiriman',
        'alamat',
    ];
}
