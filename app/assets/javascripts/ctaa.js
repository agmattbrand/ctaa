$(document).ready(function() {
	setupComingSoons();
	setupTwipsy();
});

function setupComingSoons() {
	$("a.coming-soon").each(function() {
		$(this).attr("data-content","Thanks for your patience");
		$(this).attr("data-original-title","Coming soon");		
		$(this).attr("rel","popover");
	});

	$(".coming-soon").popover({
		placement: 'below'
	});
}

function setupTwipsy() {
	$("a.twipsy-link").each(function() {
		var obj = $(this);
		var str = "Coming soon" || obj.attr("title");
		$(this).attr("title",str);
		$(this).attr("rel","twipsy");
	});

	$("a.twipsy-link").twipsy({
	   	placement: 'left'
	});	
}

function getTimeline() {
		$.ajax({
		   	url: "/timeline",
		   	type: "GET",
		   	dataType : "json",
		   	data: null,
		   	success: function(resp) {
		   		console.log(resp);
		   	}
		});	
}