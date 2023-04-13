/// @description Insert description here
// You can write your code in this editor
//mp_linear_step(oPlayer.x, oPlayer.y, 1.5, .25);

bearHealth = 25;
moveTowardPlayer=false; 
followRange=400;
minimumRange=1;

if(instance_exists(oPlayer)){ // if there is an instance of player in the room
  var disToPlayer=distance_to_object(oPlayer);
    // get the distance between bounding boxes

  moveTowardPlayer=(disToPlayer<=followRange && disToPlayer>=minimumRange); 
    // true if between the follow range and the minimum range otherwise false

  if(moveTowardPlayer){
    mp_potential_step(oPlayer.x,oPlayer.y,1,false);
  }if(disToPlayer>=followRange){
	mp_potential_step(oPlayer.x,oPlayer.y,0,false);
  }
  else{
	  mp_potential_step(oPlayer.x,oPlayer.y,1,false);
  }
}

global.bearHurt(
	if(disToPlayer <= 1){
		alarm[0] = room_speed;	
		bearHealth -= 25;
}
 
if(bearHealth < 1){
	game_end();
}




if (bearEnemy.x >= oPlayer.x)
{
	image_xscale = 1
} 
else
{
	image_xscale = -1
}

if(bearHealth < 1){
	image_xscale = 100
}
	
