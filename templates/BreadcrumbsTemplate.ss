<%-- Loop is all on one line to prevent whitespace bug in older versions of IE --%>
<nav aria-label="breadcrumb">
	<% if $Pages %>
	<ol class="breadcrumb<% if $Top.ClassName != 'SilverStripe\Blog\Model\BlogPost' %> justify-content-end<% else %> px-0<% end_if %>">
			<li class="breadcrumb-item">
				<a href="{$BaseHref}" title="{$SiteConfig.Title}">Home</a>
			</li>
			<% loop $Pages %>
				<% if $Last %>
					<li class="breadcrumb-item active">$MenuTitle.XML</li>
				<% else %>
					<li class="breadcrumb-item">
						<% if not Up.Unlinked %><a href="$Link" class="breadcrumb-$Pos"><% end_if %>
						$MenuTitle.XML
						<% if not Up.Unlinked %></a><% end_if %>
					</li>
				<% end_if %>
			<% end_loop %>
		</ol>
	<% end_if %>
</nav>
