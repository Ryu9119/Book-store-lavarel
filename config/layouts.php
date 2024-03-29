<?php

return [
	'component' => [
		'header-top' => [
			'background' => '#a90019 !important',
			''
		],
		'menu' => [
			'background' => '#dc0021 !important'
		],
		'cate' => [
			'home' => [
				'display' => ''
//				'display' => 'block !important;height: 300px;overflow-y: auto;'
			]
		],
		'footer' => [
			'background' => 'white !important',
			'color_text' => '#4a4a4a !important',
			'title' => 'color: #4a4a4a !important;text-transform: none !important;font-weight: bold !important;'
		]
	],
	'pages' => [
		'home' => [
			'slide' => [
				'with' => 'none'
			],
			'article' => [
				'layout' => '1',
				'messages' => '1 default| 2 new '
			]
		],
		'search' => [
			'price' => [
				'type' => 2,
				'messages' => '1 default , 2 sidebar'
			]
		]
	],
	'admin' => [
		'title' => 'Online book website system administration page'
	]
];