window.onblur = blurToolbars;

function blurToolbars()
	{
	setToolbarColors('mainToolbar', '#cfcfcf', '#e2e2e2', '#878787' );
	// remove the event to stop an infinite loop!
 	window.onblur = '';
	window.onfocus = focusToolbars;
	}

function focusToolbars()
	{
	setToolbarColors('mainToolbar', '#8d939d', '#b2b8c3', '#404040' );
	 // remove the event to stop an infinite loop!
	window.onfocus = '';
	window.onblur = blurToolbars;
	}

function setToolbarColors(elementId, backgroundColor, borderTopColor, borderBottomColor)
	{
	toolbar = document.getElementById(elementId);
	toolbar.style.backgroundColor = backgroundColor;
	toolbar.style.borderTopColor = borderTopColor;
	toolbar.style.borderBottomColor = borderBottomColor;
	}