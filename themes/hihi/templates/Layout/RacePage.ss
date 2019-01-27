<div class="section hero">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-10">
        <h3>$HeroTitle</h3>
        <p>$HeroContent<span class="text-span-2"></span></p>
      </div>
    </div>
  </div>
</div>

<div class="section">
  <div class="container">
    <div class="row">
      <div class="col-sm-10">
        <p class="paragraph-4">$Content</p>
      </div>
    </div>
  </div>
</div>

<div class="section buy">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
      <%-- @TODO clean up this area as unknown how much I can edit before breaking form - sam --%>
      <%-- Form container --%>
        <form id="email-form" name="email-form" data-name="Email Form">
          <div class="div-block-10">
            <%-- <h2 class="grey-heading"></h2> --%>
            <h4 class="selection-header button-2 w-button">Make your Bird selection from a Location of Your Choice Below</h4>
            <div data-duration-in="300" data-duration-out="100" class="w-tabs">
              <div class="nav tabs-menu w-tab-menu">
                <% loop Locations %>
                  <a class="bird-tabs btn btn-primary w-inline-block w-tab-link">
                    <div class="text-block-5">
                      $Name
                    </div>
                  </a>
                <% end_loop %>
              </div>

              <div class="w-tab-content">
                <div class="w-tab-pane w--tab-active">

                    <% loop Locations %>
                      <div class="location row">
                      <% loop Birds %>
                        <div class="bird col-md-3" data-id="$ID">
                          <div class="a-birds birds-div">
                            <% if Image %>
                              <img class="img-fluid" src="$Image.croppedImage(180, 180).AbsoluteURL" alt="$Code" />
                            <% else %>
                              <img class="img-fluid" src="$ThemeDir/images/bird.png" alt="$Code"/>
                            <% end_if %>
                            <h3 class="code heading-7">$Code</h3>
                            <div class="b-desc birds-p">$Description</div>
                            <span class="action-pad"></span>
                            <div class="actions">
                            <button class="birds-selected btn btn-primary">Select</button>
                            </div>
                          </div>
                        </div>
                      <% end_loop %>
                      </div>
                    <% end_loop %>

                </div>
              </div>

              <div class="RaceFooter">
                <label class="RaceFooterLabel">You have selected 0 birds</label>
                <button class="submit-button w-button btn btn-primary" style="display: none;">
                  Submit Picks
                </button>
              </div>
            </div>
          </div>
          <%-- <button class="submit-button w-button" style="display: none;">Submit Picks</button> --%>
        </form>

        <div class="picks success-message-2 w-form-done" style="display:none;">
          <h2 class="heading-9">Checkout</h2>
          <div class="w-tab-content">
            <div class="w-tab-pane w--tab-active">
              <div class="selected-birds">

              </div>
            </div>
          </div>

          <div class="w-form">
            $PaymentForm
            <%-- <% with $PaymentForm %>
              <form $FormAttributes>
              	<fieldset>
                  <div class="form-group">
                    <label for="PaymentForm_Name">Name*</label>
                    $Fields.fieldByName(Name)
                  </div>
                  <div class="form-group">
                    <label for="PaymentForm_Email">Email*</label>
                    $Fields.fieldByName(Email)
                  </div>
                  <div class="form-group">
                    <label for="PaymentForm_Country">Country</label>
                    $Fields.fieldByName(Country)
                  </div>
                  <div class="form-group">
                    <label for="PaymentForm_Donation"><strong>If you would like to make an additional donation to hihi conservation, please enter the amount here</strong></label>
                    $Fields.fieldByName(Donation)
                  </div>
                  <div class="form-check">
                    $Fields.fieldByName(Subscribe)
                    <label class="form-check-label" for="PaymentForm_Subscribe">I would like to receive information from Hihi Society, Hihi Recovery Group and Hihi trust</label>
                  </div>
                  <div class="form-check">
                    $Fields.fieldByName(Adult)
                    <label class="form-check-label" for="PaymentForm_Adult"><strong>I Confirm I am over 18 years of age*</strong></label>
                  </div>
                  $Fields.filedByName(Birds)

                  $Fields.fieldByName(StripeToken)
                  <div class="form-group">
                    $Fields.fieldByName(Total)
                    $Fields.fieldByName(TotalLabel)
                  </div>
                  <div class="form-group">
                    <label for="PaymentForm_Card">Credit Card Information</label>
                    $Fields.fieldByName(Card)
                  </div>
                </fieldset>
                <div class="Actions">
                  $Actions.dataFieldByName(action_pay)
                </div>
                <p class="footnote">Fields marked * are required.<p>
              </form>
            <% end_with %> --%>
          </div>
        </div>

        <div class="w-form-fail" style="display:none;">
          <div>Oops! Something went wrong while submitting the form.</div>
        </div>
      <%-- end of Form container --%>
      </div>
    </div>
  </div>
</div>
