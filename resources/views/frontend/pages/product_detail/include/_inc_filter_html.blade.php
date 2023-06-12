<div class="filter">
    <div>Filter by :</div>
    <div>
        <ul>
            <li><a href="" class="active">All</a></li>
            @for ($i = 5 ; $i >= 1 ; $i --)
                <li><a href="" >{{ $i }} sao</a></li>
            @endfor
        </ul>
    </div>
</div>