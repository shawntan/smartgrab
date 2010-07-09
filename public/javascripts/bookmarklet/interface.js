	var exit;
	var ParcelsInterface = (function(){
		var pi;
		var iframe;

		//gui
	    var border_width = 5;
		var makeBoxBorders = function(border_width, fix_side){
			var self = this;
			var d = $B('div', {className: parcelsInterfaceStyle+" "+"box_border"});
			d.style[fix_side] = border_width + "px";
			return d;
		};
		//box : this is the thing that "boxes" up the elements to be selected
		var createBox = function(){
			var _box = {
	        	visible: false,
	        	top: makeBoxBorders(border_width, "height"),
	        	bottom: makeBoxBorders(border_width, "height"),
	        	left: makeBoxBorders(border_width, "width"),
	        	right: makeBoxBorders(border_width, "width"),
	        	text: $B('span', {
	            	className: parcelsInterfaceStyle,
	        	}),
				setPosition: function(position, size){
					_box.setVisible(true);
					_box.bottom.style.width = _box.top.style.width = (size.width + border_width * 2) + "px";
					_box.left.style.height = _box.right.style.height = size.height + "px";
					_box.left.style.top = _box.right.style.top = position.top + "px";
					_box.left.style.left = _box.bottom.style.left = _box.top.style.left = (position.left - border_width) + "px";
					_box.top.style.top = position.top - border_width + "px";
					_box.right.style.left = position.left + size.width + "px";
					_box.bottom.style.top = position.top + size.height + "px";
				},
				setText: function(text){
					_box.text.innerHTML = text;
				},
				setVisible: function(visible){
					if (visible != _box.visible) {
						_box.top.style.display =
						_box.bottom.style.display = 
						_box.left.style.display = 
						_box.right.style.display = visible ? "block" : "none";
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
			return _box;
		};
		//suggestor: this is the prompt at the top right hand corner that "suggests" the xpath
		var createSuggestor = function(){
			var header = $B("div", {
	        	style: {
	            	width: "100%",
	            	display: "block"
				},
				children: [$B('div', {
					className: parcelsInterfaceStyle,
	            	innerHTML: "X",
	            	style: {
	                	'float': 'right',
	                	display: "block",
						clear: "left"
					},
					onclick: function(){
						exit(self);
					}
				})]
			});
			var list = $B("ul", {className: parcelsInterfaceStyle + " " + "xpath_list",});
			var status = $B("div",{className:parcelsInterfaceStyle});
			iframe = Connection.MakeIframe("annotate_iframe");
			var workspace = $B("form",{
				className: parcelsInterfaceStyle + " " + "workspace",
				children:[
					$B("input",{
						className:parcelsInterfaceStyle,
						type: "text",
						name: "test"
					})
				],
				action: create_annotation,
				method: "POST",
				target: iframe.name
			});
			var main = $B("div", {
				className: parcelsInterfaceStyle+" "+"main",
				children: [list,workspace,status]
			});
			var s = $B("div", {
				className: parcelsInterfaceStyle+" "+"suggestor",
		        children: [header, main],
		        setText: function(){
		            if (s.selectedXPath) 
		                status.innerHTML = s.selectedXPath;
					else status.innerHTML = "nothing selected";
		           // if (s.rejectedXPath) 
		           //     main.innerHTML += "Rejected: " + s.rejectedXPath + "<br/>";
		        },
				appendAnnotation: function(element){
					list.appendChild(element);
				}
		    });
		    document.body.appendChild(s);
		    return s;
		}
		//actions
		var loader = new Connection.JSONDataRequest(
			load_annotations,
			"requestPageData",
			function(page,first){
				var annotations = page.annotations;
				for(var i=0;i<annotations.length;i++){
					pi.suggestor.appendAnnotation($B("li",{
						innerHTML:annotations[i].label,
						xpath:annotations[i]
					}));
				}
			}
		);
		var select = function(element){
		    var xpath;
			if (element[parcelsSelectedStyle]) {//already selected
				xpath = pi.selector.selectedListDelete(element);
				delete element[parcelsSelectedStyle];
				removeClass(element,parcelsSelectedStyle);
				removeAllClass(parcelsHighlightedStyle);
			}
			else {
				xpath = pi.selector.selectElement(element);
				addClass(element, parcelsSelectedStyle);
				element[parcelsSelectedStyle] = true;
			}
			return xpath;
		};
		var reject = function(element){
		    var xpath;
		    if (element[parcelsRejectedStyle]) {
			        xpath = pi.selector.rejectedListDelete(element);
			        delete element[parcelsRejectedStyle];
			        removeClass(element,parcelsRejectedStyle);
			}
			else {
				xpath = pi.selector.rejectElement(element);
				addClass(element, parcelsRejectedStyle);
				element[parcelsRejectedStyle] = true;
			}
			pi.suggestor.rejectedXPath = xpath;
			return xpath;
		};
		var doHighlighting = function(element){
			var selectedXPath;
			var rejectedXPath;
			if ((hasClass(element, parcelsHighlightedStyle) ||
				hasClass(element, parcelsRejectedStyle)) && !hasClass(element,parcelsSelectedStyle)) {
				rejectedXPath = reject(element);
				pi.suggestor.rejectedXPath = rejectedXPath;
			} else {
				selectedXPath = select(element);
				pi.suggestor.selectedXPath = selectedXPath;
			}

			pi.suggestor.setText();
			xpathAddClass(pi.suggestor.selectedXPath,parcelsHighlightedStyle);
			xpathRemoveClass(pi.suggestor.rejectedXPath,parcelsHighlightedStyle);
		};
		
		var allElements = document.body.getElementsByTagName("*");
		var overrideActions = {
			onclick: function(e){
				blockevent(e);
				doHighlighting(this);
				return false;
			},
			onmouseover: function(e){
				pi.box.setPosition(getPos(this), {
					width: this.offsetWidth,
					height: this.offsetHeight
				});
				pi.box.setText(this.parentNode.tagName + " " + this.tagName);
				blockevent(e);
				return false;
			}
		};
		exit = function(){
		    //return all events back to original owner.
		    for (var event in overrideActions) {
		        for (var i = 0; i < allElements.length; i++) {
		            allElements[i][event] = allElements[i]['parcels_' + event];
		        }
		    }
		    //remove all additional elements added onto page
		    interfaceElements = queryDocument("//*[@class='" + parcelsInterfaceStyle + "']");
		    var i = interfaceElements.length;
		    while (i--) {
		        var curr = interfaceElements[i];
		        curr.parentNode.removeChild(curr);
		    }
		    removeAllClass(parcelsSelectedStyle);
		    removeAllClass(parcelsHighlightedStyle);
			removeAllClass(parcelsRejectedStyle)
		    delete pi;
			delete ParcelsInterface;
		};
		overridePageElements(overrideActions);
		
		//initialize
		pi =  {
			suggestor: createSuggestor(),
			box: createBox(),
			selector: new ParcelsSelector()
		};
		
		loader.request({page:{url:document.location.href,title:document.title}});
		return pi;
	})();

