<div class="section hero">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <h3>$Title</h3>
        <p>$HeroContent</p>
      </div>
    </div>
  </div>
</div>

<div class="section bets">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <h2 class="grey-heading">Prizes to be won</h2>
        <p class="paragraph-3">$Content<span class="text-span-3"></span></p>
      </div>
    </div>
  </div>
</div>

<div class="section" data-anchor="slide1" >
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10 sponsors">
        <h2 class="grey-heading">About our sponsors</h2>

        <ul>
          <% loop Sponsors %>
          <li>
            $Image.setWidth(300)
            <div class="companies-text">
              <h3><a href="$Website" target="_blank">$Name</a></h3>
              <p>$Description</p>
            </div>
          </li>
          <% end_loop %>
        </ul>
      </div>
    </div>
  </div>
</div>
