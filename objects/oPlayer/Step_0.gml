/// @description Insert description here
// You can write your code in this editor


right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

xDirection = right - left;
xVector = xSpeed * xDirection;
//check if there is wall 4 pixles away from player
if (place_meeting(x + xVector, y, oWall))
  {
	 //while i am moving towards a wall if 4 p away start moving slower
	//! means not
	while(!place_meeting(x + xVector, y, oWall))
	{
		// only 1 pixle move till wall
		x = x + xDirection;
	}
	//otherwise stop
	xVector = 0;
  }
  //otherwise move as normal
x = x + xVector; 

yDirection = down - up;
yVector = ySpeed * yDirection;
if (place_meeting(x, y + yVector, oWall))
  {
	 //while i am moving towards a wall if 4 p away start moving slower
	//! means not
	while(!place_meeting(x, y + xVector, oWall))
	{
		// only 1 pixle move till wall
		y = y + yDirection;
	}
	//otherwise stop
	yVector = 0;
  }
  //otherwise move as normal

y = y + yVector; 