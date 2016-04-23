$(document).ready(function() {
	$('section').imagesLoaded( function() {
		$('.grid').masonry({
			itemSelector: '.grid-item',
			percentPosition: true
		})
	});

	$('.grid').masonry({
		itemSelector: '.grid-item',
		columnWidth: 332
	});
});