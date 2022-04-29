/// @description On Explosion
//create explosion object animations around explosion
//animation objects deal damage to enemies
audio_play_sound(snd_attackPotionBreak, 2, false);
instance_create_layer(x, y, "Instances", obj_playerPotionAttack);
instance_create_layer(x, y - 15, "Instances", obj_playerPotionAttack);
instance_create_layer(x, y + 15, "Instances", obj_playerPotionAttack);
instance_create_layer(x - 15, y, "Instances", obj_playerPotionAttack);
instance_create_layer(x + 15, y, "Instances", obj_playerPotionAttack);
//instance_create_layer(x, y, "Instances", obj_playerPotionAttack);

