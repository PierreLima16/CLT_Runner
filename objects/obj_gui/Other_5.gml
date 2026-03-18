if (room == rm_jogo)
{
    if (global.pontos >= global.recorde)
    {
        global.recorde = global.pontos;
        
        salva_recorde();
    }
}