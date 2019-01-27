
<%-- @TODO don't know why these images are here, delete by end if not needed. <img src="https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm.png" width="149"
srcset="https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm-p-500.png 500w,
https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm-p-800.png 800w,
https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm.png 809w"
sizes="(max-width: 767px) 149px, 100vw" class="image-11 w-hidden-main w-hidden-medium" /> --%>
<div class="header">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <nav class="navbar navbar-expand-lg navbar-light ">
          <a class="navbar-brand" href="/">
            <img src="$ThemeDir/images/logo.png" class="img-fluid" />
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="navbar-nav">
              <% loop $Menu(1) %>
        				<li class="nav-item">
        					<a class="nav-link $LinkingMode" href="$Link" title="$Title.XML">$MenuTitle.XML</a>
        				</li>
        			<% end_loop %>
            </ul>
          </div>
        </nav>
      </div>
    </div>
  </div>
</div>
<%--
<<img src="https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm.png" width="95" srcset="https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm-p-500.png 500w, https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm-p-800.png 800w, https://daks2k3a4ib2z.cloudfront.net/5a1bc3ac45a0eb00018856e4/5a1be3baca1ffe000163f68b_Hihi_logo1.4_human_sperm.png 809w" sizes="(max-width: 767px) 100vw, 7vw" class="logo w-hidden-small w-hidden-tiny"/></a></div>
--%>
