<ul>
	@for($i = 1; $i <= 6; $i++)
		<li class="{{ Request::get('price') == $i ? "active" : "" }}">
			<a href="{{ request()->fullUrlWithQuery(['price' =>  $i]) }}">
				{{  $i == 6 ? "Bigger 1.000 $" : " Price  <= " . number_format($i * 20,0,',','.')  ." $" }}
			</a>
		</li>
	@endfor
</ul>