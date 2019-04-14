/// @arg script
/// @arg vals

// Arrays
var arrVals = argument_count > 1 ? argument[1] : [];
var arrCond = Actions_createConditionalArray();
var arr = [argument[0], arrVals, arrCond];

// Run
script_execute(argument[0], arrVals);

// Conditions
Actions_createConditional(arrCond);

// Check if comparable with already existing conditional object
var comparable = true;
var size = ds_list_size(oAI.condDat);

for (var a=0; a<size; a++) {
	// Base array data
	var _arr = oAI.condDat[| a];
	var _action = arr[_an.action];
	var _arrVals = arr[_an.values];
	var _arrCond = arr[_an.conditions];
	
	// Compare and execute
	if (!Actions_comparable(arrCond, _arrCond)) {
		comparable = false;
		break;
	}
}

// Save, if not comparable
if (!comparable) {
	ds_list_add(oAI.condDat, arr);
	log("New action added");
}
else
	log("Comparable action skipped");

log("condDat size: ", ds_list_size(oAI.condDat));

