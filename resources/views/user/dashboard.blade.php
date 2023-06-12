@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Personal Dashboard</div>
        <div class="row">
            <div class="col-3">
                <div class="box-count" style="background: #00c0ef">
                    <div class="count-text">{{ $totalTransaction }}</div>
                    <p class="count-name">Total order</p>
                </div>
            </div>
            <div class="col-3">
                <div class="box-count" style="background: #dd4b39">
                    <div class="count-text">{{ $totalTransactionCancel }}</div>
                    <p class="count-name">Cancellation form</p>
                </div>
            </div>
            <div class="col-3">
                <div class="box-count" style="background: #f39c12">
                    <div class="count-text">{{ $totalTransactionProcess }}</div>
                    <p class="count-name">Receipt && Delivery</p>
                </div>
            </div>
            <div class="col-3">
                <div class="box-count" style="background: #00a65a">
                    <div class="count-text">{{ $totalTransactionSuccess }}</div>
                    <p class="count-name">Complete</p>
                </div>
            </div>
        </div>
    </section>
@stop
