	var contains = function(array, element) {
		return (array.indexOf(element) >= 0);
	}
	var queryDocument = function(expression) {
		if(!expression) return [];
		var resp;
		var results = [];
		resp = document.evaluate(expression, document, null, XPathResult.ANY_TYPE, null);
		while (val = resp.iterateNext()) {
			results.push(val);
		}
		return results;
	};
	var getPos = function(obj) {
		var curleft = curtop = 0;
		if (obj.offsetParent) {
			do {
				curleft += obj.offsetLeft;
				curtop += obj.offsetTop;
			} while (obj = obj.offsetParent);
		}
		return {
			left: curleft,
			top: curtop
		};
	};
	
	var blockevent = function(e) {
		if (!e) var e = window.event;
		e.cancelBubble = true;
		if (e.stopPropagation) e.stopPropagation();
	};
	
	var overridePageElements = function(overrideActions) {
		allElements = document.body.getElementsByTagName("*");
		for (var event in overrideActions) {
			overrideAllEvents(allElements, event, overrideActions[event]);
		}
	};
	
	var overrideAllEvents = function(allElements, event, action) {
		for (var i = 0; i < allElements.length; i++) {
			allElements[i]['parcels_' + event] = allElements[i][event];
			bindEvent(allElements[i], event, action);
		}
	};
	
	var bindEvent = function(element, event, fun) {
		element[event] = function(e) {
			return fun.apply(element, [e]);
		}
	};
	var $B = function(tagName, object) {
		var e = document.createElement(tagName);
		for (var att in object) {
			if (att == "style") {
				for (var i in object.style) {
					if (i == 'float') e.style.cssFloat = e.style.styleFloat = object.style['float'];
					else e.style[i] = object.style[i];
				}
			}
			else if (att == "children") for (var i = 0; i < object.children.length; i++) 
				e.appendChild(object.children[i]);
			else if (typeof object[att] == "function") {
				bindEvent(e,att,object[att]);
			}
			else e[att] = object[att];
		}
		return e;
	};

	var xpathAddClass = function(xpath, className) {
		var elements = queryDocument(xpath);
		for (var i = 0; i < elements.length; i++) {
			if (!hasClass(elements[i], className))
				addClass(elements[i],className);
		}
	};
	var xpathRemoveClass = function(xpath,className) {
		var elements = queryDocument(xpath);
		var reg = new RegExp('(\\s|^)' + className + '(\\s|$)');
		for (var i = 0; i < elements.length; i++) {
			elements[i].className = elements[i].className.replace(reg, ' ').trim();
		}
	};
	var hasClass = function(obj, className) {
		if (typeof obj == 'undefined' || obj == null || !RegExp) {
			return false;
		}
		var re = new RegExp("(^|\\s)" + className + "(\\s|$)");
		if (typeof(obj) == "string") {
			return re.test(obj);
		}
		else if (typeof(obj) == "object" && obj.className) {
			return re.test(obj.className);
		}
		return false;
	};
	var removeAllClass = function(className) {
		xpathRemoveClass("//*[contains(concat(' ',@class,' '),' " + className + " ')]",className);
	}
	var removeClass = function(element, className) {
		var reg = new RegExp('(\\s|^)' + className + '(\\s|$)');
		element.className = element.className.replace(reg, ' ').trim();
	};
	var addClass = function(element, className) {
		element.className = (element.className + " " + className).trim();
	};