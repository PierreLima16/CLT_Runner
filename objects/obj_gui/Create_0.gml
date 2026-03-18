randomize();

opcoes = ["JOGAR", "SAIR"];
sel = 0;
pos = 0;
cor1 = c_white;
cor2 = c_black;

msc(msc_game);

menu = function()
{
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    var _array = array_length(opcoes);
    var _shake;
    
    for (var i = 0; i < _array; i++)
    {
        draw_set_font(fnt_gui);
        draw_set_halign(1);
        
        if (sel == i)
        {
            cor1 = c_orange;
            cor2 = c_black;
            pos = 15;
            _shake = sin(2 * get_timer()/100000) * 5;
        }
        else
        {
            cor1 = c_white;
            cor2 = c_black;
            pos = 0;
            _shake = 0;
        }
        
        var _tam = string_height("OI");
        
        draw_set_colour(cor2);
        draw_text_transformed((_gui_w/2 - 2) /*+ _shake*/, (_gui_h/2 + i * _tam) + 2 + _shake, opcoes[i], 1, 1, 0);
        
        draw_set_colour(cor1);
        draw_text_transformed((_gui_w/2) /*+ _shake*/, _gui_h/2 + i * _tam + _shake, opcoes[i], 1, 1, 0);
        
        draw_set_font(fnt_gui);
        draw_set_halign(-1);
        draw_set_colour(c_white);
    }
    
    //Controlando o menu
    if (keyboard_check_pressed(vk_up))
    {
        if (sel != 0) sel--;
        else sel = _array-1;
            
        efeito_sonoro(0.8, 1.2, snd_select);
    }
    
    if (keyboard_check_pressed(vk_down))
    {
        if (sel != _array-1) sel++;
        else sel = 0;
            
        efeito_sonoro(0.8, 1.2, snd_select);
    }
    
    if (keyboard_check_pressed(vk_enter))
    {
        efeito_sonoro(2, 2, snd_select);
        
        switch(sel)
        {
            //Iniciar jogo
            case 0:
                var _tran = instance_create_layer(0, 0, "Tran", obj_tran);
                _tran.destino = rm_jogo;
            break;
        
            //Fechar o jogo
            case 1:
                game_end();
            break;
        }
    }
    
}
        
pontuacao = function()
{
    if (room == rm_jogo)
    {
        var _gui_w = display_get_gui_width();
        var _gui_h = display_get_gui_height();
        
        draw_set_font(fnt_gui);
        draw_set_halign(1);
        
        draw_set_colour(c_black);
        draw_text(_gui_w/2 - 2, (_gui_h - 60) + 2, string(round(global.pontos)) + "KM");
        
        draw_set_colour(c_white);
        draw_text(_gui_w/2, (_gui_h - 60), string(round(global.pontos)) + "KM");
        
        draw_set_font(-1);
        draw_set_halign(-1);
        draw_set_colour(-1);
    }
    
    if (room == rm_inicio)
    {
        var _gui_w = display_get_gui_width();
        var _gui_h = display_get_gui_height();
        
        draw_set_font(fnt_gui);
        draw_set_halign(1);
        
        var _onda = sin(2 * get_timer()/1000000) * 10;
        
        draw_set_colour(c_black);
        draw_text_transformed((_gui_w/2 - 2), (_gui_h/4) + 2, "RECORDE: \n" + string(round(global.recorde)) + "KM ", 0.85, 0.85, _onda);
        
        draw_set_colour(c_white);
        draw_text_transformed(_gui_w/2, (_gui_h/4), "RECORDE: \n" + string(round(global.recorde)) + "KM ", 0.85, 0.85, _onda);
        
        draw_set_font(-1);
        draw_set_halign(-1);
        draw_set_colour(-1);
    } 
}
        
powerup = function()
{
    
    static _peguei = false;
    
    
    if (global.pw1)
    {
        if (!_peguei)
        {
            alarm[0] = room_speed * 5;
            _peguei = true;
        }
        
        layer_vspeed("Background", global.level * 10);
        if (instance_exists(obj_gerador)) instance_destroy(obj_gerador); 
        if (instance_exists(obj_CLT)) instance_destroy(obj_CLT);
        if (instance_exists(obj_pickup_pai)) instance_destroy(obj_pickup_pai);
        
            
    }
    else
    {
        _peguei = false;
        
        layer_vspeed("Background", global.level);
        
        if (!instance_exists(obj_gerador))
        {
            instance_create_layer(0, 0, "Geral", obj_gerador);
        }
    }
    
    if (room != rm_jogo)
    {
        global.pw1 = false;
        _peguei = false;
    }
}        