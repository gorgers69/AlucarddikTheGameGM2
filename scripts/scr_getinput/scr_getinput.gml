function scr_getinput(){
	key_left = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl);
	key_right = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr);
	key_jump = keyboard_check(ord("Z")) || gamepad_button_check(0, gp_face1);
	key_shoot = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(0, gp_face2);
	key_down = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd);
	key_down2 = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd);
	key_start = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start);
	key_up = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
	key_shoot2 = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_face3);
	key_pause = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start);
}