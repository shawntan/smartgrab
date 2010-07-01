/**
 * @author shawn
 */
/**
 * @constructor
 */
function ParcelsInterface() {
	var self = this;
	this.overrideActions = {
		onclick: function(e) {
			blockevent(e);
			self.doHighlighting(this);
			return false;
		},
		onmouseover: function(e) {
			self.box.setPosition(getPos(this), {
				width: this.offsetWidth,
				height: this.offsetHeight
			});
			self.box.setText(this.parentNode.tagName + " " + this.tagName);
			blockevent(e);
			return false;
		}
	}
	this.overridePageElements();
	this.headTag = document.getElementsByTagName("head")[0];
	this.selector = new ParcelsSelector();
	this.createBox();
	this.createSuggestor();
}

ParcelsInterface.prototype = {
	box: null,
	suggestor: null,
	selector: null,
	headTag: null,
	parcelsSelectedStyle: "parcels_selected",
	parcelsHighlightedStyle: "parcels_highlight",
	parcelsInterfaceStyle: "parcels_interface",
	overrideActions: null,
	overridePageElements: function() {
		var self = this;
		this.allElements = document.body.getElementsByTagName("*");
		var overrideActions = this.overrideActions;
		for (var event in overrideActions) {
			this.overrideAllEvents(this.allElements, event, overrideActions[event]);
		}
	},
	overrideAllEvents: function(allElements, event, action) {
		for (var i = 0; i < allElements.length; i++) {
			allElements[i]['parcels_' + event] = allElements[i][event];
			this.bindEvent(allElements[i], event, action);
		}
	},
	bindEvent: function(element, event, fun) {
		element[event] = function(e) {
			return fun.apply(element, [e]);
		}
	},
	createBox: function() {
		var self = this;
		var border_width = 5;
		var _box = {
			visible: false,
			top: self.makeBoxBorders(border_width, "height"),
			bottom: self.makeBoxBorders(border_width, "height"),
			left: self.makeBoxBorders(border_width, "width"),
			right: self.makeBoxBorders(border_width, "width"),
			text: self.makeBoxText(border_width),
			setPosition: function(position, size) {
				_box.setVisible(true);
				
				_box.bottom.style.width = _box.top.style.width = (size.width + border_width * 2) + "px";
				
				_box.left.style.height = _box.right.style.height = size.height + "px";
				
				_box.left.style.top = _box.right.style.top = position.top + "px";
				
				_box.left.style.left = _box.bottom.style.left = _box.top.style.left = (position.left - border_width) + "px";
				_box.top.style.top = position.top - border_width + "px";
				_box.right.style.left = position.left + size.width + "px";
				_box.bottom.style.top = position.top + size.height + "px";
			},
			setText: function(text) {
				_box.text.innerHTML = text;
			},
			setVisible: function(visible) {
				if (visible != _box.visible) {
					_box.top.style.display = _box.bottom.style.display = _box.left.style.display = _box.right.style.display = visible ? "block" : "none";
					_box.visible = visible;
				}
			}
		};
		_box.bottom.style.height = "auto";
		
		document.body.appendChild(_box.top);
		document.body.appendChild(_box.left);
		document.body.appendChild(_box.bottom);
		document.body.appendChild(_box.right);
		_box.bottom.appendChild(_box.text);
		
		self.box = _box;
	},
	makeBoxBorders: function(border_width, fix_side) {
		var self = this;
		var d = $B('div', {
			className: self.parcelsInterfaceStyle,
			style: {
				backgroundColor: "#555555",
				display: "none",
				position: "absolute",
				zIndex: "9999",
			}
		});
		d.style[fix_side] = border_width + "px";
		return d;
	},
	makeBoxText: function(border_width) {
		var self = this;
		var s = $B('span', {
			className: self.parcelsInterfaceStyle,
			style: {
				color: "#FFFFFF",
				fontSize: 9 + 'px',
				height: border_width * 4 + 'px',
				padding: 4 + 'px'
			}
		});
		return s;
	},
	createSuggestor: function() {
		var self = this;
		var header = $B("div", {
			style: {
				width: "100%",
				display: "block"
			},
			children: [$B('div', {
				className: this.parcelsInterfaceStyle,
				innerHTML: "X",
				style: {
					'float': 'right',
					display: "block"
				},
				onclick: function() {
					ParcelsInterface.exit(self);
				}
			})]
		});
		var main = $B("div", {
			className: this.parcelsInterfaceStyle,
			style: {
				width: "100%",
				padding: "10px"
			}
		});
		var s = $B("div", {
			className: this.parcelsInterfaceStyle,
			style: {
				backgroundColor: "#595959",
				position: "fixed",
				display: "block",
				right: 40 + 'px',
				top: 40 + 'px',
				zIndex: "10000",
				border: "2px solid #fefefe",
				color: "#fefefe"
			},
			children: [header, main],
			setText: function(text) {
				main.innerHTML = text;
			}
		});
		this.suggestor = s;
		document.body.appendChild(s);
	},
	xpathAddClass: function(xpath, className) {
		elements = queryDocument(xpath);
		for (var i = 0; i < elements.length; i++) {
			if (!this.hasClass(elements[i], className) && !this.hasClass(elements[i], this.parcelsSelectedStyle))
				this.addClass(elements[i],this.parcelsHighlightedStyle);
		}
	},
	hasClass: function(obj, className) {
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
	},
	removeAllClass: function(className) {
		elements = queryDocument("//*[contains(concat(' ',@class,' '),' " + className + " ')]");
		var reg = new RegExp('(\\s|^)' + className + '(\\s|$)');
		for (var i = 0; i < elements.length; i++) {
			elements[i].className = elements[i].className.replace(reg, ' ').trim();
		};
			},
	removeClass: function(element, className) {
		var reg = new RegExp('(\\s|^)' + className + '(\\s|$)');
		element.className = element.className.replace(reg, ' ').trim();
	},
	addClass: function(element, className) {
		element.className = (element.className + " " + className).trim();
	},
	doHighlighting: function(element) {
		if (this.hasClass(element, this.parcelsHighlightedStyle)) return;
		var xpath;
		if (element[this.parcelsSelectedStyle]) {//already selected
			xpath = this.selector.selectedListDelete(element);
			delete element[this.parcelsSelectedStyle];
			this.removeClass(element, this.parcelsSelectedStyle);
			this.removeAllClass(this.parcelsHighlightedStyle);
		}
		else {
			xpath = this.selector.selectElement(element);
			this.addClass(element, this.parcelsSelectedStyle);
			element[this.parcelsSelectedStyle] = true;
		}
		if (xpath) {
			this.xpathAddClass(xpath, this.parcelsHighlightedStyle);
			this.suggestor.setText(xpath);
		}
		else {
			this.suggestor.setText('');
		}
		
	}
};
ParcelsInterface.exit = function(pi) {
	//return all events back to original owner.
	var overrideActions = pi.overrideActions;
	for (var event in overrideActions) {
		for (var i = 0; i < pi.allElements.length; i++) {
			pi.allElements[i][event] = pi.allElements[i]['parcels_' + event];
		}
	}
	//remove all additional elements added onto page
	interfaceElements = queryDocument("//*[@class='" + pi.parcelsInterfaceStyle + "']");
	var i = interfaceElements.length;
	while (i--) {
		var curr = interfaceElements[i];
		curr.parentNode.removeChild(curr);
	}
	pi.script_selector.parentNode.removeChild(pi.script_selector);
	pi.script_interface.parentNode.removeChild(pi.script_interface);
	pi.removeAllClass(pi.parcelsSelectedStyle);
	pi.removeAllClass(pi.parcelsHighlightedStyle);
	delete pi;
};

function getPos(obj) {
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
}

function queryDocument(expression) {
	var resp;
	var results = [];
	resp = document.evaluate(expression, document, null, XPathResult.ANY_TYPE, null);
	while (val = resp.iterateNext()) {
		results.push(val);
	}
	return results;
}

function blockevent(e) {
	if (!e) var e = window.event;
	e.cancelBubble = true;
	if (e.stopPropagation) e.stopPropagation();
}

function $B(tagName, object) {
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
			e[att] = function() {
				object[att].apply(e, arguments);
			};
		}
		else e[att] = object[att];
	}
	return e;
}
