<!DOCTYPE html>
<head>
  <% base_tag %>
  $MetaTags(false)

  <title>$SiteConfig.Title - $SiteConfig.Tagline</title>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1" name="viewport" />
  <link rel="shortcut icon" href="$ThemeDir/images/favicon.ico">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<% require themedCSS('style') %>

  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />
  <script src="$ThemeDir/javascript/browser.js"></script>

  <%-- Other Meta Tags go here --%>

  <%-- Search Engine --%>
	<%-- <meta name="description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"Rally is a community, collaboration and decision making platform for students, education providers and employers."<% end_if %> />
	<meta name="image" content=<% if $OGImage %>"$OGImage.absoluteURL"<% else %>"http://rallystudents.com/themes/rally/images/og.png"<% end_if %> /> --%>
	<%-- Schema.org for Google --%>
	<%-- <meta itemprop="description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"Rally is a community, collaboration and decision making platform for students, education providers and employers."<% end_if %> />
	<meta itemprop="image" content=<% if $OGImage %>"$OGImage.absoluteURL"<% else %>"http://rallystudents.com/themes/rally/images/og.png"<% end_if %> /> --%>
	<%-- Twitter --%>
	<%-- <meta name="twitter:card" content="summary_large_image" />
	<meta name="twitter:title" content=<% if $CustomMetaTitle %>"$CustomMetaTitle"<% else %>"$SiteConfig.Title - $Title"<% end_if %> />
	<meta name="twitter:description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"Rally is a community, collaboration and decision making platform for students, education providers and employers."<% end_if %> />
	<meta name="twitter:site" content="@rallystudents" />
	<meta name="twitter:creator" content="@rallystudents" />
	<meta name="twitter:image:src" content=<% if $TwitterImage %>"$TwitterImage.absoluteURL"<% else %>"http://rallystudents.com/themes/rally/images/twitter.png"<% end_if %> /> --%>
	<%-- Open Graph general (Facebook, Pinterest & Google+) --%>
	<%-- <meta property="og:title" content=<% if $CustomMetaTitle %>"$CustomMetaTitle"<% else %>"$SiteConfig.Title - $Title"<% end_if %> />
	<meta property="og:description" content=<% if $MetaDescription %>"$MetaDescription"<% else %>"Rally is a community, collaboration and decision making platform for students, education providers and employers."<% end_if %> />
	<meta property="og:image" content=<% if $OGImage %>"$OGImage.absoluteURL"<% else %>"http://rallystudents.com/themes/rally/images/og.png"<% end_if %> />
	<meta property="og:url" content="$AbsoluteLink" />
	<meta property="og:site_name" content="Rally Students" />
	<meta property="og:locale" content="en_US" />
	<meta property="fb:admins" content="107046289847777" />
	<meta property="fb:app_id" content="121914475187356" />
	<meta property="og:type" content="website" /> --%>


</head>

<body class="$ClassName">
  <% include Header %>

  $Layout

  <%-- So admin login looks nicer --%>
  <% if URLSegment = Security  %>
  <div class="content">
  	<div class="container">
  		<div class="row section">
  			<div class="col-12">
  				$Form
  			</div>
  		</div>
  	</div>
  </div>
  <% end_if %>

  <% include Footer %>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://js.stripe.com/v3/"></script>

  <script src="$ThemeDir/javascript/cart.js"></script>
  <script src="$ThemeDir/javascript/card.js"></script>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  <%--  Global site tag (gtag.js) - Google Analytics --%>
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-53827764-3"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-53827764-3');
  </script>
</body>

</html>
