if (keyboard_check_pressed(vk_space))
{
    if (image_index != 3) image_index += 1;
        
    else if (image_index == 3) room_goto(rm_jogo);
}

    