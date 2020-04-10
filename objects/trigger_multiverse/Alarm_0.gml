camera.target = noone;
Anim_Create(camera, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, camera.x, 120, 90);
inst = instance_create_depth(char_player.x + 290, char_player.y, 0, char_sans);

alarm[1] = 100;