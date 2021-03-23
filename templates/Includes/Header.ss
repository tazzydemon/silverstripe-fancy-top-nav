<header class="sticky-top shadow" role="banner">
	<div class="container py-3">
		<div class="row align-items-middle mx-0">
			<div class="col-7 col-sm-6 col-md-4 col-lg-auto">
				<p class="h1">				
					<a href="$BaseHref" class="brand" rel="home">
						<% if $SiteConfig.Logo %>
							$SiteConfig.Logo.ScaleHeight(80)
						<% else %>
							<strong>$SiteConfig.Title</strong>
						<% end_if %>
					</a>
				</p>
			</div>
			<div class="navbar navbar-expand-lg navbar-light col-5 col-sm-6 col-md-8 d-lg-none py-0">
				<button class="navbar-toggler mx-auto my-1 ml-sm-auto mr-sm-2" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>
				<% if $SearchForm %>
					<button class="navbar-toggler my-1 mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#SearchBar" aria-controls="SearchBar" aria-expanded="false" aria-label="Toggle search">
						<i class="fas fa-search"></i>
					</button>
				<% end_if %>
				<% with $SiteConfig.ContactPage %>
					<% if $PhoneNumber %>
						<a class="nav-link my-1 mx-auto mx-sm-2" href="tel:$PhoneNumber"><i class="fas fa-phone"></i></a>
					<% end_if %>
					<% if $Email %>
						<a class="nav-link my-1 mx-auto mx-sm-2" href="mailto:$Email"><i class="fas fa-envelope"></i></a>
					<% end_if %>
                <% end_with %>
			</div>
			<div class="col-lg">
				<% include Navigation %>
			</div>
		</div>
	</div>
</header>
