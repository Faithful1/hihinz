<div class="section hero home">
  <div class="container">
    <div class="row justify-content-around align-items-center">
      <div class="col-4 hidden-xs hidden-sm hidden-md">
        <img class="img-fluid home-hihi" title="The Great Hihi Sperm Race" src="$ThemeDir/images/logo.png" />
      </div>
      <div class="col-sm-12 col-md-10 col-lg-7 card-container">
        <div class="hero-card">
          <h4>$HeroTitle</h4>
          <p>$HeroContent</p>
          <p><strong>$HeroBottom</strong></p>
          <a class="btn btn-primary" href="/the-race">Place your bets</a>
        </div>

        <%-- <img src="https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a2723d38d8c96000141bfee_Icon_Bird-hihi.png" width="114" class="image-8" /> --%>
        <%-- <img src="https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a21126e58de520001259244_background-2.png" width="682" srcset="https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a21126e58de520001259244_background-2-p-1080.png 1080w, https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a21126e58de520001259244_background-2.png 1785w" sizes="(max-width: 767px) 100vw, (max-width: 701px) 56vw, 50vw" class="image-9 w-hidden-small w-hidden-tiny" /> --%>
      </div>
    </div>
  </div>
</div>

<div class="section bets">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <% if $Title1 %><h2>$Title1</h2><% end_if %>
        <% if $Content1 %><p>$Content1</p><% end_if %>
      </div>
    </div>
  </div>
</div>

<div class="section money">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10 money-counter">
        <% if $Title4 %><h2>$Title4</h2><% end_if %>
        <% if $Content4 %><p>$Content4</p><% end_if %>
      </div>
    </div>
  </div>
</div>

<div data-anchor="slide1" class="section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <% if $Title2 %><h2>$Title2</h2><% end_if %>
        <% if $Content2 %><p>$Content2</p><% end_if %>
      </div>
    </div>

    <div class="row justify-content-center">
      <% loop Locations %>
        <div class="col-sm-6 col-lg-3 location">
          <img src="$Image.URL" alt="$Photoby" class="img-fluid" />
          <em>$Photoby</em>
          <h4><a href="/the-race" title="$Name">$Name</a></h4>
          $Description
        </div>
      <% end_loop %>
    </div>
  </div>
</div>

<div class="section win">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <h2>$Title3</h2>
        <p>$Content3</p>
      </div>
    </div>

    <div class="row justify-content-center">
      <div class="col-sm-12 col-md-10">
        <div class="list-wrapper">
          $Content
        </div>
      </div>

    </div>
  </div>
</div>
