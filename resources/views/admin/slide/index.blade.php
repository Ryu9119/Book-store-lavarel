@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Slides</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.slide.index') }}"> Slides</a></li>
            <li class="active"> List </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.slide.create') }}" class="btn btn-primary">Add New<i class="fa fa-plus"></i></a></h3>
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
                                    <th>Sort</th>
                                    <th>Target</th>
                                    <th>Action</th>
                                </tr>
                                @if (isset($slides))
                                    @foreach($slides as $key => $slide)
                                        <tr>
                                            <td>{{ ($key + 1) }}</td>
                                            <td>{{ $slide->sd_title }}</td>
                                            <td>
                                                @if ($slide->sd_active == 1)
                                                    <a href="{{ route('admin.slide.active', $slide->id) }}" class="label label-info">Show</a>
                                                @else 
                                                    <a href="{{ route('admin.slide.active', $slide->id) }}" class="label label-default">Hide</a>
                                                @endif
                                            </td>
                                            <td>{{  $slide->sd_sort }}</td>
                                            <td>{{  isset($target[$slide->sd_target]) ? $target[$slide->sd_target] : '' }}</td>
                                            <td>
                                                <a href="{{ route('admin.slide.update', $slide->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Edit</a>
                                                <a href="{{  route('admin.slide.delete', $slide->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {{-- {!! $slides->links() !!} --}}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop