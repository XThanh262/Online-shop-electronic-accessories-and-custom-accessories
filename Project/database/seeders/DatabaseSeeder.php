<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $databases = [
            [
                'table' => 'roles',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Quản trị viên',
                    ],
                    [
                        'id' => 2,
                        'name' => 'Nhân Viên',
                    ],
                    [
                        'id' => 3,
                        'name' => 'Khách hàng',
                    ]
                ],
            ],
            [
                'table' => 'users',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Admin',
                        'email' => 'admin@gmail.com',
                        'password' => Hash::make('password'),
                        'email_verified_at' => now(),
                        'phone_number' => '0000000000',
                        'active' => 1,
                        'role_id' => 1
                    ]
                ]
            ],
            [
                'table' => 'brands',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Apple'
                    ],
                    [
                        'id' => 2,
                        'name' => 'logitech'
                    ],
                    [
                        'id' => 3,
                        'name' => 'Costum'
                    ],
                   
                ]
            ],
            [
                'table' => 'categories',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Đồ trang trí',
                        'parent_id' => 0,
                        'slug' => 'do-trang-tri'
                    ],
                    [
                        'id' => 2,
                        'name' => 'Phụ kiện',
                        'parent_id' => 0,
                        'slug' => 'phu-kien'
                    ],
                    [
                        'id' => 3,
                        'name' => 'Costum keycap',
                        'parent_id' => 1,
                        'slug' => 'costum-keycap'
                    ],
                    [
                        'id' => 4,
                        'name' => 'Figure',
                        'parent_id' => 1,
                        'slug' => 'figure'
                    ],
                    [
                        'id' => 5,
                        'name' => 'Costum case',
                        'parent_id' => 1,
                        'slug' => 'costum-case'
                    ],
                    [
                        'id' => 6,
                        'name' => 'Bàn phím',
                        'parent_id' => 2,
                        'slug' => 'ban-phim'
                    ],
                    [
                        'id' => 7,
                        'name' => 'chuột',
                        'parent_id' => 2,
                        'slug' => 'Chuột'
                    ],
                    [
                        'id' => 8,
                        'name' => 'Tai-Nghe',
                        'parent_id' => 2,
                        'slug' => 'tai-nghe'
                    ],
                ]
            ],
            [
                'table' => 'payments',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Khi nhận hàng',
                        'status' => 1,
                        'img' => '1682960154.png',
                    ],
                    [
                        'id' => 2,
                        'name' => 'Ví điện tử Momo',
                        'status' => 1,
                        'img' => '1682960202.png',
                    ],
                ]
            ],
            [
                'table' => 'colors',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'Trắng'
                    ],
                    [
                        'id' => 2,
                        'name' => 'Đen'
                    ],
                    [
                        'id' => 3,
                        'name' => 'Xám'
                    ],
                    [
                        'id' => 4,
                        'name' => 'Đỏ'
                    ],
                    [
                        'id' => 5,
                        'name' => 'Vàng'
                    ],
                    [
                        'id' => 6,
                        'name' => 'Xanh'
                    ],
                    [
                        'id' => 7,
                        'name' => 'Tím'
                    ],
                ]
            ],
            [
                'table' => 'sizes',
                'data' => [
                    [
                        'id' => 1,
                        'name' => 'S'
                    ],
                    [
                        'id' => 2,
                        'name' => 'M'
                    ],
                    [
                        'id' => 3,
                        'name' => 'L'
                    ],
                    [
                        'id' => 4,
                        'name' => 'XL'
                    ],
                ]
            ],
            [
                'table' => 'setting',
                'data' => [
                    [
                        'id' => 1,
                        'logo' => 'logo.png',
                        'name' => 'PKShop',
                        'email' => 'PKShop@gmail.com',
                        'address' => '459 Tôn Đức Thắng, quận Liên Chiểu, thành phố Đà Nẵng',
                        'phone_number' => '123125934093',
                        'maintenance' => 2,
                        'notification' => '<b>WEBSITE tạm thời bảo trì để nâng cấp xin  quay lại sau</b>',
                        'introduction' => '
                            
                        '
                    ],
                ]
            ]
        ];

        foreach ($databases as $database ) {
            $recordNumber = DB::table($database['table'])->count();
            foreach ($database['data'] as $key => $record) {
                if ($key >= $recordNumber)
                DB::table($database['table'])->insert($record);
            }
        }
    }
}