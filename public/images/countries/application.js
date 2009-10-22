// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function fadeOrderSummary() {
	disableEditButton();
	disableHeaderLinks();
	$("progressIndicator").appear({ duration: 0});

	options = { duration: 0.2, from: 1.0, to: 0.55 }
	$("orderSummary").fade(options);
	$("header").fade(options);
	$("footer").fade(options);
}

function disableEditButton() {
	$("editButton").disabled = true;
}

function disableHeaderLinks() {
	$("headerLogo").removeAttribute("href");
}