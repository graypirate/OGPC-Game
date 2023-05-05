/// @description Insert description here
// You can write your code in this editor
//mp_linear_step(oPlayer.x, oPlayer.y, 2.5, .25);
target_x = oPlayer.x;
target_y = oPlayer.y;

mp_potential_step(target_x, target_y, 2.5, .25);
mp_potential_step_object(target_x, target_y, 0.5, oWall);
