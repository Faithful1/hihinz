<div class="section hero">
  <div class="container ">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <h2>The Hihi Society</h2>
        <p>The Hihi Society is an unincorporated society set up as a fundraising body for hihi conservation. The founding members are all also members are all involved in hihi research and conservation. The Great Hihi Sperm Race is the society's first fundraising project.</p>
      </div>
    </div>
  </div>
</div>

<div class="section">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <h2>$Title</h2>
      </div>
    </div>

    <div class="row justify-content-center">
      <% loop  $Children %>
        <div class="col-sm-3 team-member">
          <% with $Photo.Fill(200,200) %>
            <img class="img-fluid" src="$URL" alt="" width="$Width" height=”$Height” />
          <% end_with %>
          <h5>$Fullname</h5>
          <p>$Position</p>
        </div>
      <% end_loop %>
    </div>

    <% if $charter %>
      <div class="row">
        <div class="col-sm-10">
          <a href="$Charter.URL" title="Download Society Charter">Download Society Charter ($charter.Extension, $Charter.Size)</a>
        </div>
      </div>
    <% end_if %>
  </div>
</div>
