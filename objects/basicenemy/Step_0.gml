/// @description Insert description here
// You can write your code in this editor
//mp_linear_step(oPlayer.x, oPlayer.y, 1.5, .25);

wolfHealth = 50;

moveTowardPlayer=false; 
followRange=400;
minimumRange=5;

if(instance_exists(oPlayer)){ // if there is an instance of player in the room
  var disToPlayer=distance_to_object(oPlayer);
    // get the distance between bounding boxes

  moveTowardPlayer=(disToPlayer<=followRange && disToPlayer>=minimumRange); 
    // true if between the follow range and the minimum range otherwise false

  if(moveTowardPlayer){
    mp_potential_step(oPlayer.x,oPlayer.y,2.5,false);
  }else{
	mp_potential_step(oPlayer.x,oPlayer.y,0,false);
  }
}

if (basicenemy.x >= oPlayer.x)
{
	image_xscale = -1.4
} 
else
{
	image_xscale = 1.4
}
	
