<table class="table">
	<tbody>
	<tr>
		<th style="width: 100px">Mã HĐ</th>
		<th>Status</th>
		<th>Created at</th>
		<th>Amount of money</th>
		<th>Customer outstanding balance</th>
		<th>Manipulation</th>
	</tr>
	@if (isset($transactions))
		@foreach($transactions as $transaction)
			<tr>
				<td>DH{{ $transaction->id }}</td>
				<td>
					<span class="label label-{{ $transaction->getStatus($transaction->tst_status)['class'] }}">
						{{ $transaction->getStatus($transaction->tst_status)['name'] }}
					</span>
				</td>
				<td>{{  $transaction->created_at }}</td>
				<td>{{ number_format($transaction->tst_total_money,0,',','.') }} đ</td>
				<td>{{ number_format($transaction->tst_total_money,0,',','.') }} đ</td>
				<td>
					<a href="{{ route('admin.action.transaction',['success', $transaction->id]) }}" class="btn btn-success btn-xs js-success-transaction"><i class="fa fa-calculator"></i> Pay</a>
				</td>
			</tr>
		@endforeach
	@endif
	</tbody>
</table>