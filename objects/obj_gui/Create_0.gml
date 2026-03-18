randomize();

opcoes = ["JOGAR", "OPÇÕES", "SAIR"];
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
        
            //Options
            case 1:
                
            break;
        
            //Fechar o jogo
            case 2:
                game_end();
            break;    
        }
    }
    
}