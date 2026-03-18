if (room == rm_jogo)
{
    if (instance_exists(obj_tran))
    {
        layer_vspeed("Background", 0);
    }
    else
    {
        layer_vspeed("Background", global.level);
    }
    
    if (!global.pw1)
    {
        if (global.pontos >= global.level * 100)
        {
            global.level += 0.5;
        }
    }
    
    
    powerup();
}