@extends('layouts.app_master_user')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/user.min.css') }}">
@stop
@section('content')
    <section>
        <div class="title">Order details #{{ $transaction->id }}</div>
        <div class="row">
            <div class="col-4">
                <h5>Receiver's information</h5>
                <div class="box">
                    <p><b>{{ $transaction->user->name ?? "[N\A]" }}</b></p>
                    <p>Address: <span>{{ $transaction->tst_address }}</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5>Delivery method</h5>
                <div class="box">
                    <p>Transport fee : <span>0 đ</span></p>
                </div>
            </div>
            <div class="col-4">
                <h5>Payments </h5>
                <div class="box">
                    <p>Form : <b>Cash on delivery</b></p>
                    <p>Total amount : <b>{{ number_format($transaction->tst_total_money,0,',','.') }} VNĐ</b></p>
                </div>
            </div>
        </div>
        <div class="content">
            <h4>Product information</h4>
            @include('user.include._inc_list_product_order')
            <div>
                <a href="{{ route('get.user.transaction') }}" class="btn btn-light"><i class="fa fa-angle-double-left"></i> Return to order</a>
                @if ($transaction->tst_status != -1)
                    <a href="{{ route('get.user.tracking_order', $transaction->id) }}" class="btn btn-primary js-"> Order tracking <i class="fa fa-angle-double-right"></i></a>
                @endif
            </div>
        </div>
    </section>
@stop
