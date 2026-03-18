if (instance_exists(obj_tran))
{
    vspeed = 0;
    image_speed = 0;
}  
else
{
    vspeed = layer_get_vspeed("Background");
    image_speed = 1;
}

if (x > 90) dir = -1;
else if (x < 90) dir = 1;    