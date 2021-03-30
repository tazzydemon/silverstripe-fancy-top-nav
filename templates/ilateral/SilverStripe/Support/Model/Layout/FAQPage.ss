<% include SideBar %>

<div class="content-container <% if $Menu(2) %>unit-75<% end_if %>">
    <article>
        <h1>$Title</h1>
        <div class="content">$Content</div>
        <% if $Questions %>
			<div class="qandas">
				<% loop $Questions.Sort('FeedbackScore','DESC') %>
					<div id="$URLSegment" class="qanda">
						<div class="question">
							<h2>
								<button class="btn btn-link" data-bs-toggle="collapse" data-bs-target='#Question-{$ID}' role="button" aria-expanded="false" aria-controls="collapseExample">
									$Title
								</button>
							</h2>
						</div>
						<div id="Question-{$ID}" class="answer collapse">
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
