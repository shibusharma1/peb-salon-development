<div class="uk-product-sidebar uk-box-shadow-small " uk-sticky="end: true;offset: 100;" style=" z-index: 5;">
    <div class="blog-sidebar-heading">RELATED BLOGS & NEWS</div>
    <ul class="uk-list uk-margin-remove">
        @foreach ($related_posts as $row)
            <li class="uk-margin-remove">
                <a href="{{url(geturl($row['uri'],$row['page_key']))}}">
                    <div class="uk-flex  uk-sidebar-list">
                        <span uk-icon="chevron-right"></span>
                        <div>
                            <h3 class="uk-margin-remove two-line">{{$row->post_title}}</h3>
                        </div>
                    </div>
                </a>
            </li>
        @endforeach
    </ul>
</div>