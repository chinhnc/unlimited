/*
	Multiverse by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {
var $main = $('#main');

			// Thumbs.
				$main.children('.thumb').each(function() {

					var	$this = $(this),
						$image = $this.find('.image'), $image_img = $image.children('img'),
						x;

					// No image? Bail.
						if ($image.length == 0)
							return;

					// Image.
					// This sets the background of the "image" <span> to the image pointed to by its child
					// <img> (which is then hidden). Gives us way more flexibility.

						// Set background.
							$image.css('background-image', 'url(' + $image_img.attr('src') + ')');

						// Set background position.
							if (x = $image_img.data('position'))
								$image.css('background-position', x);

						// Hide original img.
							$image_img.hide();

					// Hack: IE<11 doesn't support pointer-events, which means clicks to our image never
					// land as they're blocked by the thumbnail's caption overlay gradient. This just forces
					// the click through to the image.
						// if (skel.vars.IEVersion < 11)
						// 	$this.css('cursor', 'pointer').on('click', function() {
						// 			$image.trigger('click');
						// 		});

				});
})(jQuery);