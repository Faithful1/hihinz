<div class="section">
  <div class="container hero">
    <div class="row">
      <div class="col-12">
        <h2>$HeroTitle</h2>
        <p>$HeroContent</p>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2>$Title1</h2>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-12">
        <ul class="products">
          <% loop $Products %>
            <li>
              <% with $Image.setWidth(200) %>
                <img class="my-custom-class" src="$URL" alt="$Name" width="$Width" height=”$Height” />
              <% end_with %>

              <p>$Name</p>
              <p>${$Price}</p>
              <a href="#" title="Add to Cart">Add to Cart</a>
            </li>
          <% end_loop %>
        </ul>
      </div>
    </div>
  </div>
</div>
