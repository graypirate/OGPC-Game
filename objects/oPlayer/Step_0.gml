/// @description Insert description here
// You can write your code in this editor

diagonal = false;
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
cDirection = 0




xDirection = right - left;
xVector = xSpeed * xDirection;

if(keyboard_check(vk_left)){
	draw_sprite_ext(PlayerMoveRight, 0, x, y, -1, 1, 1, 1, 1);
}
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

// when(xSpeed > 0 || ySpeed > 0){
	// 
// }

//preventing double speed from diagonal down right
if (right && down){
	xSpeed = 2;
	ySpeed = 2;
	diagonal = true;
}

//preventing double speed from diagonal down left
else if (left && down){
	xSpeed = 2;
	ySpeed = 2;
	diagonal = true;
}

//preventing double speed from diagonal up right
else if (right && up){
	xSpeed = 2;
	ySpeed = 2;
	diagonal = true;
}

//preventing double speed from diagonal up left
else if (left && up){
	xSpeed = 2;
	ySpeed = 2;
	diagonal = true;
}

else{
	xSpeed = 4;
	ySpeed = 4;
}


//animation code
var _oldSprite = sprite_index;
if (right + left + up + down != 0)
{
		sprite_index = PlayerMoveRight;
} else sprite_index =PlayerIdle;
if (_oldSprite != sprite_index) localFrame = 0;

// Mirror for animation
if (left > 0)
{
	image_xscale = -0.4
} 
if (right > 0)
{
	image_xscale = 0.4
}

