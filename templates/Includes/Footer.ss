<footer role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <h3 class="h5">Links</h3>
                <div class="column-content">
                    <ul class="nav flex-column">
                        <% if $CustomMenu('footer-menu') %>
                            <% loop $CustomMenu('footer-menu') %>
                                <li class="$LinkingMode nav-item col-6<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                            <% end_loop %>
                        <% else %>
                            <% loop $Menu(1) %>
                                <li class="$LinkingMode nav-item col-6<% if $isCurrent || $isSection %> active<% end_if %>"><a class="nav-link" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
                            <% end_loop %>
                        <% end_if %>
                    </ul>
                </div>
            </div>
            <div class="col-sm">
                <h3 class="h5">Get In Touch</h3>
                <% with $SiteConfig.ContactPage %>
                    <ul class="nav flex-column">
                        <% if $PhoneNumber %>
                            <li class="nav-item">
                                <span class="nav-link">$PhoneNumber</span>
                            </li>
                        <% end_if %>
                        <% if $Email %>
                            <li class="nav-item">
                                <a class="nav-link" href="mailto:$Email">$Email</a>
                            </li>
                        <% end_if %>
                    </ul>
                <% end_with %>
            </div>
            <div class="col-sm">
				<p class="h1">				
					<a href="$BaseHref" class="brand" rel="home">
						<% if $SiteConfig.Logo %>
							$SiteConfig.Logo.ScaleHeight(80)
						<% else %>
							$SiteConfig.Title
						<% end_if %>
					</a>
				</p>
				<% if $SiteConfig.Tagline %>
					<p>
						<a href="$BaseHref" class="brand" rel="home">
							$SiteConfig.Tagline
						</a>
					</p>
				<% end_if %>
                <p>&copy; Copyright {$Now.Year} {$SiteConfig.Title}. All rights reserved. | SilverStripe Bootstrap theme by <a href="http://www.ilateralweb.co.uk" target="_blank">ilateral</a>.</p>
            </div>
        </div>
    </div>
</footer>