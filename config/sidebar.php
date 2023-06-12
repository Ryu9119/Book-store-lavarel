<?php
return [
    [
        'name' => 'Product Management',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fa fa-database',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Information',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key',
				'level'  => [1],
            ],
            [
                'name'  => 'Categories',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit',
				'level'  => [1],
			],
//            [
//                'name'  => 'Từ khoá',
//                'namespace' => 'keyword',
//                'route' => 'admin.keyword.index',
//                'icon'  => 'fa fa-key',
//				'level'  => [1,2],
//            ],
            [
                'name'  => 'Products',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database',
				'level'  => [1,2],
			],
			
			[
                'name'  => 'Ratings',
                'namespace' => 'rating',
                'route' => 'admin.rating.index',
                'icon'  => 'fa fa-star',
				'level'  => [1],
            ],
			[
                'name'  => 'Comments',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star',
				'level'  => [1],
            ],
        ]
    ],
    [
        'name' => 'Manage Posts',
        'list-check' => ['menu','article'],
        'icon' => 'fa fa-edit',
		'level'  => [1],
        'sub'  => [
            [
                'name'  => 'Menu',
                'namespace' => 'menu',
                'route' => 'admin.menu.index',
                'icon'  => 'fa-newspaper-o',
				'level'  => [1],
            ],
            [
                'name'  => 'Articles',
                'namespace' => 'article',
                'route' => 'admin.article.index',
                'icon'  => 'fa-edit',
				'level'  => [1],
            ],
        ]
    ],
	[
		'name' => 'Users management',
		'list-check' => ['user','ncc'],
		'icon' => 'fa fa-user',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'Users',
				'route' => 'admin.user.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-user',
				'level'  => [1,2],
			],
			[
				'name'  => 'Suppliers',
				'route' => 'admin.ncc.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-users',
				'level'  => [1,2],
			]
		]
	],
//    [
//        'name' => 'Nhập hàng',
//        'list-check' => ['invoice_entered'],
//        'icon' => 'fa-plus-circle',
//        'level'  => [1,2],
//        'sub'  => [
//            [
//                'name'  => 'Danh sách',
//                'route' => 'admin.invoice_entered.index',
//                'namespace' => 'invoice_entered',
//                'icon'  => 'fa-list',
//                'level'  => [1,2],
//            ],
//        ]
//    ],
//    [
//        'name' => 'Account',
//        'list-check' => ['user','rating','comment','contact'],
//        'icon' => 'fa fa-user',
//        'sub'  => [
//            [
//                'name'  => 'User',
//                'route' => 'admin.user.index',
//                'namespace' => 'user',
//                'icon'  => 'fa fa-user'
//            ],
//            [
//                'name'  => 'Rating',
//                'namespace' => 'rating',
//                'route' => 'admin.rating.index',
//                'icon'  => 'fa fa-star'
//            ],
//            [
//                'name'  => 'Comment',
//                'namespace' => 'comment',
//                'route' => 'admin.comment.index',
//                'icon'  => 'fa fa-star'
//            ],
//            [
//                'name'  => 'Contact',
//                'namespace' => 'contact',
//                'route' => 'admin.contact',
//                'icon'  => 'fa fa-star'
//            ],
//        ]
//    ],
    [
        'name' => 'Transactions',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Lists',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fa-opencart',
				'level'  => [1,2],
            ]
        ]
    ],
	[
        'name' => 'Inventory management',
        'list-check' => ['inventory','import','export','invoice_entered'],
        'icon' => 'fa-folder-open-o',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Import',
                'namespace' => 'import',
                'route' => 'admin.invoice_entered.index',
                'icon'  => 'fa-plus-square',
				'level'  => [1,2],
            ],
//			[
//				'name'  => 'Export',
//				'namespace' => 'export',
//				'route' => 'admin.inventory.out_of_stock',
//				'icon'  => 'fa-plus-square',
//				'level'  => [1,2],
//			],
//			[
//				'name'  => 'Inventory',
//				'namespace' => 'tonkho',
//				'route' => 'admin.inventory.tonkho',
//				'icon'  => 'fa-plus-square',
//				'level'  => [1,2],
//			]
        ]
    ],
//    [
//        'name' => 'SystemPay',
//        'list-check' => ['pay-in'],
//        'icon' => 'fa  fa-usd',
//        'sub'  => [
//            [
//                'name'  => 'Nạp tiền',
//                'route' => 'admin.system_pay_in.index',
//                'namespace' => 'pay-in',
//                'icon'  => 'fa fa-money'
//            ]
//        ]
//    ],
//    [
//        'name'  => 'Hệ thống',
//        'label' => 'true'
//    ],
	[
		'name' => 'System',
		'list-check' => ['slide','account_admin','event','page-static','statistical'],
		'icon' => 'fa  fa-usd',
		'level'  => [1],
		'sub'  => [
			[
				'name'  => 'Admins',
				'route' => 'admin.account_admin.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Slides',
				'route' => 'admin.slide.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Events',
				'route' => 'admin.event.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
				'name'  => 'Statics',
				'route' => 'admin.static.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			[
			'name'  => 'Statistical',
			'route' => 'admin.statistical',
			'namespace' => 'pay-in',
			'level'  => [1],
			'icon'  => 'fa-circle-o'
			],
		]
	],
];
