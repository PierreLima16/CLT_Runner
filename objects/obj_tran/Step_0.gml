if (!escuro)
{
    alpha += 0.05;
}
else
{
    alpha -= 0.05;
}

if(alpha >= 1 and !escuro)
{
    room_goto(destino);
}

if (room == destino and alpha <= 0)
{
    instance_destroy();
}