if (!audio_is_playing(snd_morte)) efeito_sonoro(0.8, 1.2, snd_morte);

var _tran = instance_create_layer(0, 0, "Tran", obj_tran);
_tran.destino = rm_inicio;