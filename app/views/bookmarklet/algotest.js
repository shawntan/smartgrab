
var stringAlign = new Align(
	function(e1,e2){return e1==e2?1:0;},
	function(e1,e2){
		if(!stringAlign.result) stringAlign.result = "";
		if(e1==e2)stringAlign.result=e1+stringAlign.result;
		else stringAlign.result = "("+e1+","+e2+")"+stringAlign.result
	},
	function(e1,e2){
		if(!stringAlign.result) stringAlign.result = "_";
		else stringAlign.result="_"+stringAlign.result;
	}
);
stringAlign(["S","H","A","W","N"],["S","H","T","R","N"]);
print(stringAlign.result);
