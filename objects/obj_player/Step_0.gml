//Iniciando as variáveis que guardam meus inputs
var _right = keyboard_check_pressed(vk_left);
var _left  = keyboard_check_pressed(vk_right);

//Se eu apertar a setinha esquerda
if (_left and lado == true) lado = false; //Eu vou para direita
    
//Se eu apertar a setinha para direita
if (_right and lado == false) lado = true; //Eu vou para a direita
    

//Se estou na direita
if (!lado)
{
    if (instance_exists(obj_dir))
    {
        x = obj_dir.x;
        dir = -1;
    }
}

if (lado)
{
    if (instance_exists(obj_esq))
    {
        x = obj_esq.x;
        dir = 1;
    }
}

