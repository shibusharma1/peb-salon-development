<div class="uk-product-sidebar uk-box-shadow-small " uk-sticky="end: true;offset: 100;"   style=" z-index: 5;">
    <ul class="uk-list uk-margin-remove">
        @foreach($data_child as $row)
            <li class="uk-margin-remove">
                <a href="{{url(geturl($row['uri'],$row['page_key']))}}">
                    <div class="uk-flex uk-flex-between uk-sidebar-list">
                        <h3 class="uk-margin-remove">{{$row->post_title}}</h3>
                        <span uk-icon="chevron-right"></span>
                    </div>
                </a>
            </li>
        @endforeach
    </ul>
</div>