@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Invoice entered</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.invoice_entered.index') }}"> Invoice entered</a></li>
            <li class="active"> List </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.invoice_entered.create') }}" class="btn btn-primary"> Add new <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Supplier</th>
                                    <th>Product</th>
                                    <th>The number of import</th>
                                    <th>Amount of money</th>
                                    <th>Total amount</th>
                                    <th>Paid</th>
                                    <th>Debt</th>
                                    <th>Action</th>
                                </tr>
                            </tbody>
                            @if (isset($invoiceEntered))
                                    @foreach($invoiceEntered as  $key => $item)
                                        <tr>
                                            <td>{{ ($key + 1) }}</td>
                                            <td>{{ $item->suppliere->sl_name ?? "[NA]" }}</td>
                                            <td>
                                                <a target="_blank"
                                                        href="{{ route('get.product.detail',($item->product->pro_slug ?? '') .'-'.$item->ie_product_id) }}">
                                                    {{ $item->product->pro_name ?? "[N\A]"}}</a>
                                            </td>
                                            <td>{{ $item->ie_number }}</td>
                                            <td>{{ number_format($item->ie_money,0,',','.') }} $</td>
                                            <td>{{ number_format($item->ie_total_money,0,',','.') }} $</td>
                                            <!-- <td>{{ $item->ie_number - $item->ie_number_sold }}</td> -->
                                            <td>{{ number_format($item->ie_the_advance,0,',','.') }} $</td>
                                            <td>{{ number_format($item->ie_total_money - $item->ie_the_advance,0,',','.') }} $</td>
                                            <td>
                                                <a href="{{ route('admin.invoice_entered.update', $item->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                                <a href="{{  route('admin.invoice_entered.delete', $item->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop
