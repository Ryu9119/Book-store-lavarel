@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add new admin</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.account_admin.index') }}"> Admins</a></li>
            <li class="active"> Add new </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    @include('components.int_message')
                    <form role="form" action="" method="POST">
                         @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('name') ? 'has-error' : '' }}">
                                <label for="name">Name <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ old('name') }}" name="name"  placeholder="Name ...">
                                @if ($errors->first('name'))
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('phone') ? 'has-error' : '' }}">
                                <label for="name">Phone <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" value="{{ old('phone') }}"  name="phone"  placeholder="Phone ...">
                                @if ($errors->first('phone'))
                                    <span class="text-danger">{{ $errors->first('phone') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('email') ? 'has-error' : '' }}">
                                <label for="name">Email <span class="text-danger">(*)</span></label>
                                <input type="email" class="form-control" value="{{ old('email') }}"  name="email"  placeholder="Email ...">
                                @if ($errors->first('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group ">
                                <label for="name">Position <span class="text-danger">(*)</span></label>
                                <select class="form-control" name="level">
                                    <option value="1">Admin</option>
                                    <option value="2">Staff</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('password') ? 'has-error' : '' }}">
                                <label for="name">Password <span class="text-danger">(*)</span></label>
                                <input type="password" class="form-control" name="password"  placeholder="********">
                                @if ($errors->first('password'))
                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.account_admin.index') }}" class="btn btn-danger">
                                Back <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Save data <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
