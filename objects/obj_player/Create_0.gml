scr_collision_init();
grav = 0.3;
state = states.normal;
image_xscale = 1;
image_speed = 0.15;
movespeed = 0;
grounded = 0;
global.collect = 0;
suplex = 0;
deadtimer = 64;
flash = false;
global.hp = 3;
global.debugmode = false;
spring = false;
global.ammo = 0;
shotgun = false;
crouch = false;
global.kill = 0;
global.secret = 0;

//enable debug mode By Building the Source Code
if GM_build_type = "run"
	global.debugmode = true;