vspeed = layer_get_vspeed("Background");

dir = 1;

if (place_meeting(x, y, id))
{
    instance_destroy();
    show_message("Me destrui");
}
