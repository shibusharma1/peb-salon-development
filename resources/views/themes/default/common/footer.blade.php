        <footer>
            <div class="uk-vision-section uk-section uk-section-small">
                <div class="uk-container uk-container-large ">
                    <div class="uk-child-width-1-2@m uk-child-width-1-4@l uk-grid" uk-grid uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: .block;  delay: 400; repeat: false;">
                        <div class="block">
                            <a href="{{ url('/') }}" >
                                <img alt="" loading="eager" src="{{asset('themes-assets/img/logo.png')}}" width="120" style="background: white;padding: 8px;">
                            </a>
                            <p class="uk-text-white">
                                {{ $setting->welcome_title }}
                            </p>
                        </div>
                        <div class="block">
                            <h3 class="uk-text-white uk-margin-small-bottom">IMPORTANT LINKS</h3>
                            <ul class="uk-footer-ul uk-margin-remove-top">
                                @foreach ($navigations as $row)
                                    <li><a href="{{ url('page/' . posttype_url($row->uri)) }}">{{ $row->post_type }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="block">
                            <h3 class="uk-text-white uk-margin-small-bottom">OUR PRODUCTS</h3>
                            <ul class="uk-footer-ul uk-margin-remove-top">
                                @foreach ($products as $row)
                                    <li><a href="{{url(geturl($row['uri'],$row['page_key']))}}">{{ $row->post_title }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="block">
                            <h3 class="uk-text-white uk-margin-small-bottom">CONTACT US</h3>
                            <ul class="uk-footer-ul uk-margin-remove-top">
                                <li class="uk-text-white"><i class="fa-solid fa-location-dot uk-margin-small-right"></i>{{ $setting->address }}</li>
                                <li class="uk-text-white"><i class="fa-solid fa-location-dot uk-margin-small-right"></i>{{ $setting->address2 }}</li>
                                <li class="uk-text-white"><i class="fa-solid fa-phone uk-margin-small-right"></i>{{ $setting->phone }}</li>
                                <li class="uk-text-white"><i class="fa-solid fa-envelope uk-margin-small-right"></i>{{ $setting->email_primary }}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="uk-bg-dark uk-padding-small">
                <div class="uk-container uk-container-large">
                    <div class="uk-child-width-1-3@m uk-grid" uk-grid uk-scrollspy=" cls: uk-animation-slide-bottom-small; target: .block;  delay: 400; repeat: false;">
                        <div class="uk-flex uk-flex-middle block" style="gap:15px;">
                            <!-- <a href="#" class="uk-text-white">Terms and Condition</a>
                            <a href="#" class="uk-text-white">Privacy</a> -->
                        </div>
                        <div class="uk-text-center block">
                            <p class="uk-margin-remove uk-text-white">{{ $setting->copyright_text }}</p>
                            <p class="uk-margin-remove uk-text-white">Design & Developed By <a href="https://cyberlink.com.np/" target="_blank">Cyberlink Pvt. Ltd.</a></p>
                        </div>
                        <div class="uk-flex uk-flex-middle uk-flex-right">
                            <div class="uk-footer-icon block">
                                <a href="{{ $setting->facebook_link }}" class="uk-icon-button uk-margin-small-right" uk-icon="facebook"></a>
                                <a href="{{ $setting->instagram_link }}" class="uk-icon-button uk-margin-small-right" uk-icon="instagram"></a>
                                <a href="{{ $setting->twitter_link }}" class="uk-icon-button uk-margin-small-right" uk-icon="x"></a>
                                <a href="{{ $setting->youtube_link }}" class="uk-icon-button" uk-icon="youtube"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </footer>

        <script src="{{asset('themes-assets/js/uikit-icons.js')}}"></script>
        <script src="{{asset('themes-assets/js/jquery.js')}}"></script>
        <script src="{{asset('themes-assets/js/youtube.js')}}"></script>
        <script>
            $(function() {
                setTimeout("$('#preloader').fadeOut('slow')", 800)
            })
        </script>
	</body>

</html>