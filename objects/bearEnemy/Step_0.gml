/// @description Insert description here
// You can write your code in this editor
//mp_linear_step(oPlayer.x, oPlayer.y, 1.5, .25);


if(instance_exists(oPlayer)){ // if there is an instance of player in the room
  var disToPlayer=distance_to_object(oPlayer);
    // get the distance between bounding boxes

  moveTowardPlayer=(disToPlayer<=followRange && disToPlayer>=minimumRange); 
    // true if between the follow range and the minimum range otherwise false

  if(moveTowardPlayer){
    mp_potential_step(oPlayer.x,oPlayer.y,1.5,false);
  }else{
	mp_potential_step(oPlayer.x,oPlayer.y,0,false);
  }
}

if (timer > 0)
{
	global.attack = false;
	timer -= 1/room_speed //decrease in seconds
}
if(global.attack && disToPlayer <= 1){	
	mp_potential_step(-oPlayer.x * 1000,-oPlayer.y * 1000,-100,false);
	bearHealth -= 25;
	show_debug_message(bearHealth);
	timer = timermax;
}

 
if(bearHealth < 1){
	followRange=0;
	image_yscale = 0.5
	timer = timermax;
	move_towards_point( 1000000, 10000000, 10000000 );
}

if (timer2 > 0)
{
	moveTowardPlayer = false;
	global.enemyAttack = false;
	timer2 -= 1/room_speed //decrease in seconds
}

if(disToPlayer <= 1){
	timer2 = timer2max;
	show_debug_message("attacking player");
	if(disToPlayer <= 1){
		global.enemyAttack = true;
	}
	show_debug_message("done attacking player");
	timer2 = timer2max;
}






if (bearEnemy.x >= oPlayer.x)
{
	image_xscale = 1
} 
else
{
	image_xscale = -1
}
	
