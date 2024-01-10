<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pengiriman>
 */
class PengirimanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
        'id_pengiriman'=>$this->faker->unique()
            ->numberBetween($min=01000, $max=1000),
        'tanggal_pengiriman'=>$this->faker->date(),
        'alamat'=>$this->faker->address(),
        ];
    }
}
