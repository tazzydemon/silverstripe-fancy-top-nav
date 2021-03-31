<% include SideBar %>

<div class="content-container <% if $Menu(2) %>unit-75<% end_if %>">
    <article>
        <h1>$Title</h1>
        <div class="content">$Content</div>
        <% if $Questions %>
			<div class="qandas card-group" id="qanda_accordion" role="tablist">
				<% loop $Questions.Sort('FeedbackScore','DESC') %>
					<div id="$URLSegment" class="qanda mb-3 w-100">
						<div class="question card-header">
							<h2>
								<a class="text-light" role="button" data-toggle="collapse" data-parent="#qanda_accordion" href='#Answer{$ID}'>
									$Title
								</a>
							</h2>
						</div>
						<div id="Answer{$ID}" class="answer collapse card-body">
							$Content
							<% include FeedbackButtons %>
						</div>
					</div>
				<% end_loop %>
			</div>
        <% end_if %>
        $CalendarWidget
    </article>
        $Form
        $PageComments
</div>
