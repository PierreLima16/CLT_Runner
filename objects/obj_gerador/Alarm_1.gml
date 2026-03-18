//Pickups

//Escolhendo o número de pickups que irão nascer
var _qtd = 1;

//Repetindo esse número de vezes
repeat(_qtd)
{
    //escolhendo o tipo de pickup
    var _pickup = choose(obj_batatinha, obj_burguer, obj_chocolate, obj_coxinha);
    
    //escolhendo qual lado vai nascer
    var _lado = choose(obj_esq.x, obj_dir.x);
    
    //Aleatorizando onde vai nascer no eixo Y
    var _y = random_range(-24, -90);
    
    //Criando a pickup
    instance_create_layer(_lado, _y, "Pickups", _pickup);
}

//Reativando o alarme 1
alarm[1] = game_get_speed(gamespeed_fps) * random_range(15, 20);

