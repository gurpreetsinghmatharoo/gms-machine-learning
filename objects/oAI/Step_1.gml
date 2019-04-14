/// @description 
// Vars
horPrev = hor;
jump = 0;
jumpHold = 0;
run = 0;

// Reset
if (keyboard_check_pressed(ord("R"))) {
	x = xstart;
	y = ystart;
}

// Current conditional object
var myCond = [];
Actions_createConditional(myCond);

// Check with conditions in database
var size = ds_list_size(condDat);

for (var a=0; a<size; a++) {
	// Base array data
	var arr = condDat[| a];
	var action = arr[_an.action];
	var arrVals = arr[_an.values];
	var arrCond = arr[_an.conditions];
	
	// Compare and execute
	if (Actions_comparable(myCond, arrCond)) {
		script_execute(action);
	}
}