/**
 * @author shawn
 */
function $B(tagName, object) {
	var e = document.createElement(tagName);
	for (var att in object) {
		if (att == "style") {
			for (var i in object.style) {
				if (i == 'float') e.style.cssFloat = e.style.styleFloat = object.style['float'];
				else e.style[i] = object.style[i];
			}
		}
		else if (att == "children")
			for (var i = 0; i < object.children.length; i++) e.appendChild(object.children[i]);
		else if (typeof object[att] == "function") {
			e[att] = function() {object[att].apply(e, arguments);};
		}
		else e[att] = object[att];
	}
	return e;
}