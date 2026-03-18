global.pontos = 0;
global.recorde = 0;
global.level = 1;

global.pw1 = false;

function salva_recorde()
{
    var _save = ds_map_create();
    
    ds_map_add(_save, "recorde", global.recorde);
    
    ds_map_secure_save(_save, "recorde.dat");
    
    ds_map_destroy(_save);
}

function carrega_recorde()
{
    if (file_exists("recorde.dat"))
    {
        var _save = ds_map_secure_load("recorde.dat");
        
        global.recorde = _save[? "recorde"];
        
        ds_map_destroy(_save);
    }
}

function efeito_sonoro(_pitch1, _pitch2, _snd)
{
    var _pitch = random_range(_pitch1, _pitch2);
    
    audio_play_sound(_snd, 2, 0, , , _pitch);
}

function msc(_snd)
{
    audio_play_sound(_snd, 1, 1);
}