function efeito_sonoro(_pitch1, _pitch2, _snd)
{
    var _pitch = random_range(_pitch1, _pitch2);
    
    audio_play_sound(_snd, 2, 0, , , _pitch);
}

function msc(_snd)
{
    audio_play_sound(_snd, 1, 1);
}