if (room == rm_jogo)
{
    if (instance_exists(obj_tran))
    {
        layer_vspeed("Background", 0);
    }
    else
    {
        layer_vspeed("Background", 1);
    }
} 