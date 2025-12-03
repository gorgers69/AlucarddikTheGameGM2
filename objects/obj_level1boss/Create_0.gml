event_inherited();
spr_idle = spr_joe;
spr_walk = spr_joe;
sprite_index = spr_walk;
jumptimer = 35;
state = boss_state.normal;
flash = false;
grounded = true;
spr_dead = spr_joe_jump;

enum boss_state {
	normal,
	attack,
	jump
}

throwknife = false;