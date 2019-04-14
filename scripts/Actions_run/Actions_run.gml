/// @arg script
/// @arg vals

// Arrays
var arrVals = argument_count > 1 ? argument[1] : [];
var arrCond = [[], []];
var arr = [argument[0], arrVals, arrCond];

// Run
script_execute(argument[0], arrVals);

// Conditions
Actions_createConditional(arrCond);

// Store
ds_list_add(oAI.condDat, arr);