//Carteiras de trabalho

//Escolhendo o número de CLTs que vão nascer
var _qtd = 1;

//Repetindo esse número de vezes
repeat(_qtd)
{
    //Escolhendo o lado
    var _lado = choose(obj_esq.x, obj_dir.x);
    
    //Escolhendo o eixo Y que irá nascer
    var _y = random_range(-20, -90);
    
    //Criando a CLT
    instance_create_layer(_lado, _y, "CLT", obj_CLT);
}

//Reativando o alarme 0
alarm[0] = game_get_speed(gamespeed_fps) * random_range(2, 3);