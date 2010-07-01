/**
 * @author shawn
 */

/**
 * javascript:(function(){document.body.appendChild(document.createElement('script')).src='http://localhost:3000/javascripts/bookmarklet/bootstrap.js?s='+Math.floor(Math.random()*1000);})();
 */

var bookmarklet_home = "http://localhost:3000/javascripts/bookmarklet/"
var pi;
function loadJS(filename,onload){
	var head = document.getElementsByTagName("head")[0];
	var script = document.createElement("script");
	script.src = bookmarklet_home + filename;
	script.text = "text/javascript";
	// Attach handlers for all browsers
	var done = false;
	script.onload = script.onreadystatechange = function() {
		if( !done && ( !this.readyState
					||	this.readyState == "loaded"
					||	this.readyState == "complete") ) {
			done = true;
			// Continue your code
			if(onload) onload(script);
			// Handle memory leak in IE
			script.onload = script.onreadystatechange = null;
		}
	};
	head.appendChild(script);
}
function loadCSS(filename){
	var head = document.getElementsByTagName("head")[0];
	var fileref=document.createElement("link");
	fileref.setAttribute("rel", "stylesheet");
	fileref.setAttribute("type", "text/css");
	fileref.setAttribute("href", bookmarklet_home + filename);
	head.appendChild(fileref);
}

(function(){
	loadCSS('bookmarklet.css');
	loadJS('selector.js?c='+Math.floor(Math.random()*1000),function(script){
		var selector=script;
		loadJS('parcels_interface.js?s='+Math.floor(Math.random()*1000),function(script){
			var inter = script;
			pi = new ParcelsInterface();
			pi.script_selector = selector;
			pi.script_interface = inter;
		});
	})
})();
