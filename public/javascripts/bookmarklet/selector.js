/**
 * @author shawn
 */
function ParcelsSelector() {
}

ParcelsSelector.prototype = {
	selectedList: [],
	selectedListDelete: function(el) {
		if (contains(this.selectedList, el)) this.selectedList.splice(this.selectedList.indexOf(el), 1);
		return StratUtil.predictXPath(this.selectedList);
	},
	selectElement: function(el) {
		if (!contains(this.selectedList, el)) this.selectedList.push(el);
		return StratUtil.predictXPath(this.selectedList);
	}
};

var StratUtil = {
	NO_COMMON: ["NO COMMON TRAITS"],
	predictXPath: function(paths) {
		if (paths.length == 0) return null;
		//find similarities between targets.(finding only similar tags)
		var catHash = {};
		var generalXPath;
		for (var i = 0; i < paths.length; i++) {
			var cur = paths[i];
			if (!catHash[cur.tagName]) catHash[cur.tagName] = [];
			catHash[cur.tagName].push(this.getPath(cur));
		}
		//find path separately for similar groups
		var results = [];
		for (var tag in catHash) {
			var resultPath = null;
			var categorized_paths = catHash[tag];
			for (var j = 0; j < categorized_paths.length; j++) {
				if (resultPath) {
					resultPath = StratUtil.longestCommonPathSequence(resultPath, categorized_paths[j]);
				}
				else {
					resultPath = categorized_paths[j];
				}
			}
			results.push(resultPath);
			//union them
			if (generalXPath) generalXPath += " | " + StratUtil.generateXPath(resultPath);
			else generalXPath = StratUtil.generateXPath(resultPath);
		}
		return generalXPath;
		
	},
	tokenizeClasses: function(elem) {
		if (!elem.classes) {
			if (elem.className) {
				elem.classes = elem.className.split(/\s+/);
			}
		}
		return elem.classes;
	},
	commonClasses: function(elem1, elem2) {
		if (!elem1) return;
		if (!elem2) return;
		var classes1 = this.tokenizeClasses(elem1);
		var classes2 = this.tokenizeClasses(elem2);
		if(!classes1 || !classes2) return;
		var results = [];
		var i = classes1.length;
		while (i--) {
			if(classes1[i] == "parcels_selected") continue;
			else if(classes1[i] == "parcels_highlight") continue;
			else if (classes2.indexOf(classes1[i]) >= 0) results.unshift(classes1[i]);
		}
		return results;
	},
	getPath: function(elem) {
		if (elem.parcels_path) return elem.parcels_path;
		else {
			var curr = elem;
			var result = [];
			do {
				result.unshift(curr);
				curr = curr.parentNode
			} while ((curr != document.body));
			elem.parcels_path = result;
			return result;
		}
	},
	xpathIndex: function(elem) {
		if (elem.xpathIndex) return elem.xpathIndex;
		if(elem.pseudoClass) return;
		var result = 0;
		var temp = elem;
		var tagname = elem.tagName;
		do {
			if (elem.tagName == tagname) result++;
		} while (elem = elem.previousSibling);
		temp.xpathIndex = result;
		return result;
	},
	generateXPath: function(path) {
		var result = "/html/body";
		var prevStar = false;
		for (var i = 0; i < path.length; i++) {
			var e = path[i];
			if (e == "*") {
				if (!prevStar) {
					prevStar = true;
					result += "/";
				}
			}
			else {
				prevStar = false;
				var thisToken = "/";
				if (e.pseudoClass) thisToken += e.xpathSelector();
				else {
					thisToken += lower_tag = e.tagName.toLowerCase();
					var selector;
					if (e.id) {
						result = "/";
						selector = "@id='" + e.id + "'";
					}
					else {
						selector = this.xpathIndex(e);
					}
					if (selector) thisToken += "[" + selector + "]";
				}
				result += thisToken;
			}
		}
		return result;
	},
	
	
	similarElements: function(elem1, elem2) {
		if (elem1 == elem2) return elem1;
		if (elem1=="*"||elem2=="*") return false;
		var pe = new PseudoClass(); // both elements are not in commonalityHash, compute PseudoClass
		var hasCommon = false;
		//TAG
		if (elem1.tagName == elem2.tagName) {
			pe.tagName = elem1.tagName;
			hasCommon = true;
		//INDEX
			var index;
			if ((index = this.xpathIndex(elem1)) == this.xpathIndex(elem2)){
				pe.xpathIndex = index;
				hasCommon = true;
			}
		}
		//CLASSES
		var commonClasses = this.commonClasses(elem1,elem2)
		if(commonClasses && commonClasses.length) {
			pe.classes = commonClasses;
			hasCommon = true;
		}
		if (hasCommon) {
			pe.parents = [elem1,elem2]
			return pe;
		}
		else {
			delete pe;
			return false;
		}
	},
	
	
	
	longestCommonPathSequence: function(path1, path2, lengthOnly) {
		var p1 = path1;
		var p2 = path2;
		var table = new Array(p1.length + 1);
		for (var i = 0; i < table.length; i++) {
			table[i] = new Array(p2.length + 1);
			for (var j = 0; j < table[i].length; j++) {
				if (i == 0 || j == 0) table[i][j] = 0;
				else {
					if (this.similarElements(p1[i - 1], p2[j - 1])) {
						table[i][j] = table[i - 1][j - 1] + 1;
					}
					else table[i][j] = Math.max(table[i - 1][j], table[i][j - 1]);
				}
			};
					}
		if (lengthOnly) {
			result = table[p1.length][p2.length];
			delete table;
			return result;
		}
		var self = this;
		function recon(i, j) {
			var res;
			var r;
			if (i == 0 || j == 0) return [];
			else if (res = self.similarElements(p1[i - 1], p2[j - 1])) {
				r = recon(i - 1, j - 1);
				r.push(res);
			}
			else if (table[i - 1][j] > table[i][j - 1]) {
				r = recon(i - 1, j);
				r.push('*');
			}
			else {
				r = recon(i, j - 1);
				r.push('*');
			}
			return r;
		}
		delete table;
		return recon(p1.length, p2.length);
	}
};

function contains(array, element) {
	return (array.indexOf(element) >= 0);
}

function PseudoClass(){}
PseudoClass.prototype = {
	pseudoClass: true,
	tagName:	 "*",
	classes:	null,
	xpathSelector: function() {
		var result = this.tagName.toLowerCase();
		var selector;
		if (this.classes && this.classes.length) {
			selector = "contains(concat(' ',@class,' '),' " + this.classes[0] + " ')";
		}
		else if (this.xpathIndex) {
			selector = this.xpathIndex;
		}
		if (selector) result += "[" + selector + "]";
		return result;
	}
};
