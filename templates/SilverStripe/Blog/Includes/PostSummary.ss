<div class="post-summary my-3">
	<div class="row">
		<div class="col-4">
			<p class="post-image">
				<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
					<% if $FeaturedImage %>
						$FeaturedImage.SixByFour
					<% else %>
						$Parent.FeaturedImage.SixByFour
					<% end_if %>
				</a>
			</p>
		</div>
		<div class="col-8">
			<h2>
				<a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
					<% if $MenuTitle %>$MenuTitle
					<% else %>$Title<% end_if %>
				</a>
			</h2>
			<% include SilverStripe\\Blog\\EntryMeta %>

			<% if $Summary %>
				$Summary
			<% else %>
				<p>$Excerpt</p>
			<% end_if %>
			<p>
				<a href="$Link">
					<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
				</a>
			</p>
		</div>
	</div>
</div>
