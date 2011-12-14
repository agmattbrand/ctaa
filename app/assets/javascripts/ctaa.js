$(document).ready(function() {
	setupFancyBoxes();
});

function setupFancyBoxes() {
	$('a.dialog').fancybox({
		autoSize : true,
		closeBtn : true,
		closeClick : false,
		fixed : true,
		showNavArrows : false,
		keys: {
			next: null, // override
			prev: null, // override
			close: [27] // escape key
		},
		afterShow: function() {
			// Fancy box any links inside
			focusFirst();
			setupFancyBoxes();
			$("form").validate();
		}
	});
}		
