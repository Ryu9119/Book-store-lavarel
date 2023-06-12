@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Products Management</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.product.index') }}"> Products</a></li>
            <li class="active"> Lists </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
               <div class="box-title">
                    <form class="form-inline">
                        <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id" placeholder="ID">
                        <input type="text" class="form-control" value="{{ Request::get('name') }}" name="name" placeholder="Name ...">
                        <select name="category" class="form-control" >
                            <option value="0">Category</option>
                            @foreach($categories as $item)
                                <option value="{{ $item->id }}" {{ Request::get('category') == $item->id ? "selected='selected'" : "" }}>{{  $item->c_name }}</option>
                            @endforeach
                        </select>

                        <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Search</button>
                        {{--<button type="submit" name="export" value="true" class="btn btn-info">--}}
                            {{--<i class="fa fa-save"></i> Xuất file--}}
                        {{--</button>--}}
                        <a href="{{ route('admin.product.create') }}" class="btn btn-primary">Add new <i class="fa fa-plus"></i></a>
                    </form>
                </div>
                <div class="box-body">
                   <div class="col-md-12">
                       <p> Total number of products <b>{{ $sumNumber }}</b></p>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th width="25%">Name</th>
                                    <th>Category</th>
                                    <th>Image</th>
                                    <th>Amount</th>
                                    <th>Price</th>
                                    <th>Hot</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                
                            </tbody>
                            @if (isset($products))
                                    @foreach($products as $key => $product)
                                        <tr>
                                            <td>{{ (($products->currentPage() - 1) * $products->perPage()) + ( $key + 1)  }}</td>
                                            <td>
                                                <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" target="_blank">{{ $product->pro_name }}</a>
                                            </td>
                                            <td>
                                                <span class="label label-success">{{ $product->category->c_name ?? "[N\A]" }}</span>
                                            </td>
                                            <td>
                                                <img src="{{ pare_url_file($product->pro_avatar) }}" style="width: 80px;height: 100px">
                                            </td>
                                            <td>
                                                <ul style="margin-left: 0;padding-left: 0">
                                                    <li>Import : <b>{{ $product->pro_number_import }}</b></li>
                                                    <li>
                                                        @if ($product->pro_number <= 0)
                                                            <span class="text-danger">Remaining: <b>Out stock</b></span>
                                                        @else
                                                            <span class="text-info">Remaining:  <b>{{ $product->pro_number }}</b></span>
                                                        @endif
                                                    </li>
                                                </ul>

                                            </td>
                                            <td>
                                                @if ($product->pro_sale)
                                                    <span style="text-decoration: line-through;">{{ number_format($product->pro_price,0,',','.') }} $</span><br>
                                                    <!-- @php 
                                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                                    @endphp -->
                                                    <span>{{ number_format(($product->pro_price-$product->pro_sale),0,',','.') }} $</span>
                                                @else 
                                                    {{ number_format($product->pro_price,0,',','.') }} $
                                                @endif
                                                
                                            </td>
                                            <td>
                                                @if ($product->pro_hot == 1)
                                                    <a href="{{ route('admin.product.hot', $product->id) }}" class="label label-info">Yes</a>
                                                @else 
                                                    <a href="{{ route('admin.product.hot', $product->id) }}" class="label label-default">No</a>
                                                @endif
                                            </td>
                                            <td>
                                                @if ($product->pro_active == 1)
                                                    <a href="{{ route('admin.product.active', $product->id) }}" class="label label-info">Activate</a>
                                                @else 
                                                    <a href="{{ route('admin.product.active', $product->id) }}" class="label label-default">Hidden</a>
                                                @endif
                                            </td>

                                            <td style="width: 160px;">
                                                <a href="{{ route('admin.product.update', $product->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                                <a href="{{  route('admin.product.delete', $product->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $products->appends($query)->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop