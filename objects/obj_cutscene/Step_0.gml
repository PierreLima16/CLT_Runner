if (keyboard_check_pressed(vk_space))
{
    if (image_index != 3) image_index += 1;
        
    else if (image_index == 3)
    {
        var _tran = instance_create_layer(0, 0, "Tran", obj_tran);
        _tran.destino = rm_inicio;
    }
}

    