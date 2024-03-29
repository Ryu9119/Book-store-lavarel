@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Menus</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.menu.index') }}"> Menu</a></li>
            <li class="active"> Lists </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.menu.create') }}" class="btn btn-primary">Add new<i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                       @include('components.int_message')
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Name</th>
                                    <th>Status</th>
                                    <th>Hot</th>
                                    <th>Action</th>
                                </tr>
                                @if ($menus)
                                    @foreach($menus as $key => $menu)
                                        <tr>
                                            <td>{{ ($key + 1)}}</td>
                                            <td>{{ $menu->mn_name }}</td>
                                            <td>
                                                @if ($menu->mn_status == 1)
                                                    <a href="{{ route('admin.menu.active', $menu->id) }}" class="label label-info">Show</a>
                                                @else 
                                                    <a href="{{ route('admin.menu.active', $menu->id) }}" class="label label-default">Hidden</a>
                                                @endif
                                            </td>
                                            <td>
                                                @if ($menu->mn_hot == 1)
                                                    <a href="{{ route('admin.menu.hot', $menu->id) }}" class="label label-info">Yes</a>
                                                @else 
                                                    <a href="{{ route('admin.menu.hot', $menu->id) }}" class="label label-default">No</a>
                                                @endif
                                            </td>
                                            <td>
                                                <a href="{{ route('admin.menu.update', $menu->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                                <a href="{{  route('admin.menu.delete', $menu->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop