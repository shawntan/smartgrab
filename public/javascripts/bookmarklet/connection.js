	var Connection = new function(){
		var serializeObject = function(obj, parentString){
			var count = obj.length;
			var serialized = "";
			for (var i in obj) {
				var keyval_str;
				var key = (obj instanceof Array) ? "" : encodeURIComponent(i);
				if (parentString) {
					key = parentString + "[" + key + "]";
				}
				else 
					key = encodeURIComponent(i);
				if (obj[i] instanceof Object) {
					if (obj[i] instanceof String ||
					obj[i] instanceof Number) 
						keyval_str = key + "=" + encodeURIComponent(obj[i]);
					else {
						keyval_str = serializeObject(obj[i], key);
					}
				}
				else {
					keyval_str = key + "=" + encodeURIComponent(obj[i].toString());
				}
				count--;
				serialized += "&" + keyval_str;
			}
			return serialized.replace(/^&/, '');
		};
		var loadScript = function(url,onload) {
			var head = document.getElementsByTagName("head")[0];
			var script = document.createElement("script");
			script.src =  url;
			script.type = "text/javascript";
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
			return script;
		}
		this.JSONDataRequest = function(url,callbackName,callback) {
			window[callbackName] = callback;
			this.request = function(obj){
				if(callback){
					obj["callback"]=callbackName;
				}
				if(this.scriptObj) {
					this.scriptObj.parentNode.removeChild(this.scriptObj);
					delete this.scriptObj
				}
				var requrl = url +"?"+ serializeObject(obj);
				this.scriptObj = loadScript(requrl);
			}
		};
		this.MakeIframe = function(iframe_name){
			var iframe = $B("iframe",{
				className: parcelsInterfaceStyle,
				name: iframe_name
			});
			document.body.appendChild(iframe);
			return iframe;
		};
	}();