<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Transaction extends Model
{
    protected $guarded = [''];

    const TYPE_TRANSFER = 1;
    const TYPE_ONLINE   = 2;

    const STATUS_DEFAULT = 1;
    const STATUS_PROCESS = 2;
    const STATUS_SUCCESS = 3;
    const STATUS_CANCEL = -1;
    const VNP_TMN_CODE = "Y4U88XFK";
    const VNP_HASH_SECRET = "DTHXNFNBUMNKFKQOZVHTXUXNUQUUXMTV";
    const VNP_URL = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";

    protected $status = [
        '1' => [
            'class' => 'default',
            'name'  => 'Receive'
        ],
        '2' => [
            'class' => 'info',
            'name'  => 'Being transported'
        ],
        '3' => [
            'class' => 'success',
            'name'  => 'Complete'
        ],
        '-1' => [
            'class' => 'danger',
            'name'  => 'Canceled'
        ],
    ];

    protected $type = [
    	self::TYPE_TRANSFER => [
    		'name' => 'Pay later',
			'class' => 'default'
		],
		self::TYPE_ONLINE => [
			'name' => 'Payment via wallet',
			'class' => 'success'
		],
	];

    public function getStatus()
    {
        return Arr::get($this->status, $this->tst_status,"[N\A]");
    }

	public function getType()
	{
		return Arr::get($this->type, $this->tst_type,"[N\A]");
	}

    public function user()
    {
        return $this->belongsTo(User::class,'tst_user_id','id');
    }

	public function admin()
	{
		return $this->belongsTo(Admin::class,'tst_admin_id','id');
	}

    public function payment()
    {
        return $this->belongsTo(Payment::class, 'id', 'p_transaction_id');
    }

}
