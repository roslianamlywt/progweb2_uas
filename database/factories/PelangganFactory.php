<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pelanggan>
 */
class PelangganFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_pelanggan'=>$this->faker->unique()
                ->numberBetween($min=01000, $max=1000),
            'nama_pelanggan'=>$this->faker->name(),
            'alamat'=>$this->faker->address(),
        ];
    }
}
