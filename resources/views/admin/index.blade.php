@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>{{ config('layouts.admin.title') }}</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Student information</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
                    <i class="fa fa-minus"></i></button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <ul>
                        <li>Full Name: {{ $admin->name }}</li>
                        <li>Class : {{ $admin->class }}</li>
                        <li>Phone : {{ $admin->phone }}</li>
                        <li>Email : {{ $admin->email }}</li>
                        <li>Address : {{ $admin->address }}</li>
                    </ul>
                </div>

            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
