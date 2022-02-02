/// @description Insert description here
// You can write your code in this editor

//if key is pressed then right = 1, otherwise right = 0
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

jump = keyboard_check_pressed(vk_space);

xDirection = right - left;

xVector = xSpeed * xDirection;
yVector = yVector + grv;

//check to see if we move xVector pixels (4),
//does this collide with a wall?
//If it does collide, do not move all 4 pixels.
if place_meeting(x + xVector, y, oWall)
 {    
	//as long as the next pixal is emty, move there
	//! maens "not"
     while (!place_meeting(x + xDirection, y, oWall))
     {
		  //move one pixel
		  x = x + xDirection;
     }
	 //make sure xVector won't move us
	 xVector = 0;
}

x = x + xVector;

y = y + yVector;