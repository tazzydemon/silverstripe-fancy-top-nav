<div class="col-12 px-0">
    <div class="row">
        <% if $CarouselSlides && $ShowCarousel %>
            $CarouselSlides
        <% else_if $MapEmbed %>
            <div class="map-row col-12 px-0">
                <div class="mb-4 embed-responsive embed-responsive-map">
                    $MapEmbed
                </div>
            </div>
        <% else_if $FeaturedImage %>
            <p class="banner-image mb-4 d-block col-12 px-0">
                <span class="d-sm-none">$FeaturedImage.Fill(400,300)</span>
                <span class="d-none d-sm-block d-lg-none">$FeaturedImage.Fill(800,400)</span>
                <span class="w-100 d-none d-lg-block">$FeaturedImage.Fill(1200,500)</span>
            </p>
        <% else_if $Parent.FeaturedImage %>
            <p class="banner-image mb-4 d-block col-12 px-0">
                <span class="d-sm-none">$Parent.FeaturedImage.Fill(400,300)</span>
                <span class="d-none d-sm-block d-lg-none">$Parent.FeaturedImage.Fill(800,400)</span>
                <span class="d-none d-lg-block">$Parent.FeaturedImage.Fill(1200,500)</span>
            </p>
        <% end_if %>
    </div>
</div>

<div class="col-sm-12 pt-3">
    <div class="row">
        <div class="col">
            <h1<% if not $Level(2) %> class="text-center"<% end_if %>>
                $Title
            </h1>
        </div>
        <% include BreadCrumbs %>
    </div>
</div>