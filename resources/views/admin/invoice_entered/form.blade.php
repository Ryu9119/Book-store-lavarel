<div class="col-md-12">
	@include('components.int_message')
</div>
<form role="form" action="" method="POST">
	@csrf
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
			<label for="name">Supplier <span class="text-danger">(*)</span></label>
			<select name="ie_suppliere" class="form-control">
				@foreach($suppliere as $item)
				<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_suppliere ?? 0) ==  $item->id ? "selected='selected'" : "" }}>{{ $item->sl_name }}</option>
				@endforeach
			</select>
		</div>
	</div>
	<div class="col-md-12">
		<small style="color:red; margin-bottom:20px!important; display: block">Note: You can only import up to 3 products from the same supplier/ 1 time!</small>
		<div class="row">
			<div class="col-md-4">
				<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
					<label for="name">Product 1<span class="text-danger">(*)</span></label>
					<select name="ie_product_id" class="form-control js-products">
						@foreach($products as $item)
						<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_product_id ?? 0) ==  $item->id ? "selected='selected'" : "" }}>Name : {{ $item->pro_name }}
							- Price : {{ number_format($item->pro_price,0,',','.') }}
							- Amount : {{ $item->pro_number }}
							- Lose money : {{ number_format($item->pro_price * $item->pro_number,0,',','.') }}
						</option>
						@endforeach
					</select>

				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">The number of import <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control" id="qty" required value="{{ old('ie_number',$invoiceEntered->ie_number ?? 1) }}" name="ie_number" placeholder="10 ...">
				</div>
			</div>
			<div class="col-sm-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name"> Entry price <span class="text-danger">(*)</span></label>
					<input type="number" required class="form-control js-money-input" value="{{ old('ie_money',$invoiceEntered->ie_money ?? 0) }}" name="ie_money" placeholder="10000 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Date of manufacture</label>
					<input type="date" class="form-control" name="nsx">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Expiry</label>
					<input type="date" class="form-control" name="hsd">
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-10">
		<div class="row">
			<div class="col-md-4">
				<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
					<label for="name">Product 2<span class="text-danger">(*)</span></label>
					<select name="ie_product_id2" class="form-control js-products2">
						<option value="none">Select product...</option>
						@foreach($products as $item)
						<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_product_id ?? 0) ==  $item->id ? "selected='selected'" : "" }}>Name : {{ $item->pro_name }}
							- Price : {{ number_format($item->pro_price,0,',','.') }}
							- Amount : {{ $item->pro_number }}
							- Lose money : {{ number_format($item->pro_price * $item->pro_number,0,',','.') }}
						</option>
						@endforeach
					</select>

				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">The number of import <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control" id="qty2" required value="{{ old('ie_number',$invoiceEntered->ie_number ?? 1) }}" name="ie_number2" placeholder="10 ...">
				</div>
			</div>
			<div class="col-sm-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Entry price <span class="text-danger">(*)</span></label>
					<input type="number" required class="form-control js-money-input2" value="{{ old('ie_money',$invoiceEntered->ie_money ?? 0) }}" name="ie_money2" placeholder="10000 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Date of manufacture</label>
					<input type="date" class="form-control" name="nsx2">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Expiry</label>
					<input type="date" class="form-control" name="hsd2">
				</div>
			</div>
		</div>
	</div>

	<div class="col-md-10">
		<div class="row">
			<div class="col-md-4">
				<div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
					<label for="name">Product 3<span class="text-danger">(*)</span></label>
					<select name="ie_product_id3" class="form-control js-products3">
						<option value="none">Select product ...</option>
						@foreach($products as $item)
						<option value="{{ $item->id }}" {{ ($invoiceEntered->ie_product_id ?? 0) ==  $item->id ? "selected='selected'" : "" }}>Name : {{ $item->pro_name }}
							- Price : {{ number_format($item->pro_price,0,',','.') }}
							- Amount : {{ $item->pro_number }}
							- Lose money : {{ number_format($item->pro_price * $item->pro_number,0,',','.') }}
						</option>
						@endforeach
					</select>

				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">The number of import <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control" id="qty3" value="{{ old('ie_number3',$invoiceEntered->ie_number3 ?? 1) }}" name="ie_number3" placeholder="10 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
					<label for="name">Entry price <span class="text-danger">(*)</span></label>
					<input type="number" class="form-control js-money-input3" value="{{ old('ie_money3',$invoiceEntered->ie_money3 ?? 0) }}" name="ie_money3" placeholder="10000 ...">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Date of manufacture</label>
					<input type="date" class="form-control" name="nsx3">
				</div>
			</div>
			<div class="col-md-2">
				<div class="form-group">
					<label for="exampleInputEmail1">Expiry</label>
					<input type="date" class="form-control" name="hsd3">
				</div>
			</div>
		</div>
	</div>

	<!-- <div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">Số lượng nhập <span class="text-danger">(*)</span></label>
			<input type="number" class="form-control" id="qty" required value="{{ old('ie_number',$invoiceEntered->ie_number ?? 1) }}" name="ie_number" placeholder="10 ...">
		</div>
	</div> -->
	<!-- <div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">Gía nhập <span class="text-danger">(*)</span></label>
			<input type="number" required class="form-control js-money-input" value="{{ old('ie_money',$invoiceEntered->ie_money ?? 0) }}" name="ie_money" placeholder="10000 ...">
		</div>
	</div> -->
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
			<label for="name">into money <span class="text-danger">(*)</span></label>
			<input type="text" disabled class="form-control" id="total_money" value="{{ number_format( 0,0,',','.') }} VNĐ" name="ie_money" placeholder="20.000.000">
		</div>
	</div>
	<div class="col-sm-8">
		<div class="form-group {{ $errors->first('ie_total_money') ? 'has-error' : '' }}">
			<label for="name">The amount paid <span class="text-danger">(*)</span></label>
			<input type="number" class="form-control" value="{{ $invoiceEntered->ie_the_advance ?? 0 }}" name="ie_the_advance" placeholder="20000 ...">
		</div>
	</div>
	<div class="col-sm-8">
		<div class="box-footer text-center">
			<a href="{{ route('admin.invoice_entered.index') }}" class="btn btn-danger">
				Back <i class="fa fa-undo"></i></a>
			<button type="submit" class="btn btn-success">Save data <i class="fa fa-save"></i></button>
		</div>
	</div>
</form>