<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Barang>
 */
class BarangFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_barang'=>$this->faker->unique()
                ->numberBetween($min=0001, $max=1000),
            'kode_barang'=>$this->faker->unique()
                ->numberBetween($min=202312, $max=202512),
            'nama_barang'=>$this->faker->name(),
            'harga_barang'=>$this->faker->unique()
                ->numberBetween($min=10000, $max=500000),
            'stock_barang'=>$this->faker->unique()
                ->numberBetween($min=0, $max=100000)
        ];
    }
}
