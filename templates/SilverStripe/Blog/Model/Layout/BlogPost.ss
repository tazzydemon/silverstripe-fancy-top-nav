<div class="blog-entry content-container col-sm">
	<article>

		<% if $MapEmbed %>
			<div class="map-row col-12 px-0">
				<div class="mb-4 embed-responsive embed-responsive-map">
					$MapEmbed
				</div>
			</div>
		<% else_if $FeaturedImage %>
			<p class="banner-image mb-4 d-block col-12 px-0">
				$FeaturedImage.BlogBanner
			</p>
		<% else_if $Parent.FeaturedImage %>
			<p class="banner-image mb-4 d-block col-12 px-0">
				$Parent.FeaturedImage.BlogBanner
			</p>
		<% end_if %>

		<h1>$Title</h1>
		<% include BreadCrumbs %>
		<div class="content">$Content</div>

		<% include SilverStripe\\Blog\\EntryMeta %>
	</article>

	$Form
	$CommentsForm
</div>

<% include SilverStripe\\Blog\\BlogSideBar %>