/// @description 
//Input
horPrev = hor;
hor = (keyboard_check(ord("D"))*enableWASD || keyboard_check(vk_right)*enableArrowKeys)
	- (keyboard_check(ord("A"))*enableWASD || keyboard_check(vk_left)*enableArrowKeys);
	
jump = keyboard_check_pressed(keyJump);
jumpHold = keyboard_check(keyJump);

run = keyboard_check(keyRun) && enableRun;

//Changed hor
if (hor != horPrev && hor > 0) {
	Actions_run(act_setHor, [hor]);
}

//Jumped
if (jump) {
	Actions_run(act_jump);
}

//Jumphold
if (jumpHold) {
	Actions_run(act_jumpHold);
}