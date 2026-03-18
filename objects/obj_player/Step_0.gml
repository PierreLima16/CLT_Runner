if (instance_exists(obj_tran)) image_speed = 0;
else image_speed = 1;    

//Iniciando as variáveis que guardam meus inputs
var _right = keyboard_check_pressed(vk_left);
var _left  = keyboard_check_pressed(vk_right);

//Se eu apertar a setinha esquerda
if (_left and lado == true)
{
    //Eu vou para direita
    lado = false;
    
    efeito_squash(0.5, 1.5);
} 
    
//Se eu apertar a setinha para direita
if (_right and lado == false)
{
    //Eu vou para a direita
    lado = true;
    
    efeito_squash(0.5, 1.5);
} 
    

//Se estou na direita
if (!lado)
{
    if (instance_exists(obj_dir))
    {
        x = obj_dir.x;
        y = obj_dir.y;
        dir = -1;
    }
}

if (lado)
{
    if (instance_exists(obj_esq))
    {
        x = obj_esq.x;
        y = obj_esq.y;
        dir = 1;
    }
}

if (image_speed == 1)
{
    global.pontos += 0.06 * layer_get_vspeed("background");
}

retorna_efeito_squash(0.1);

