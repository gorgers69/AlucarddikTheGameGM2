health_index = image_index;

if global.hp = 3
	health_index = 0;
else if global.hp = 2
	health_index = 1;
else if global.hp = 1
	health_index = 2;
else if global.hp = 0
	health_index = 3;

//Alucard Dik HUD Heads
if (!instance_exists(obj_player) || obj_player.state = states.dead)
	spr_HUD = spr_HUDAlucarddikDead;
else
	spr_HUD = spr_HUDAlucarddik;