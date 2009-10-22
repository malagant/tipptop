window.onload = function() {
	// clear the form input field onfocus
	var input = document.getElementById("signup_email");
	input.onfocus = function() {
		this.value = "";
	};
	
	input.onblur = function() {
		if (this.value == "") {
			this.value = "Email Address";
		}
	};
	
	// Enable image zooming
	setupZoom();
};