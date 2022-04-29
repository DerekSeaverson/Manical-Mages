/// @description On Destroy
instance_create_layer(x, y, "Instances", obj_redAttack);
instance_create_layer(x, y - 15, "Instances", obj_redAttack);
instance_create_layer(x, y + 15, "Instances", obj_redAttack);
instance_create_layer(x - 15, y, "Instances", obj_redAttack);
instance_create_layer(x + 15, y, "Instances", obj_redAttack);
