/// @description Insert description here

if (myTime > 0) {
	myTime=myTime-delta_time/1000000
} else if (myTime < 0) {
	myTime = 0;
} else if (myTime == 0) {
	instance_destroy(oPlayer);
}