function inicia_efeito_squash()
{
    xscale = 1;
    yscale = 1;
    dir = 1;
}

function efeito_squash(_1, _2)
{
    xscale = _1;
    yscale = _2;
}

function retorna_efeito_squash(_qtd)
{
    xscale = lerp(xscale, 1, _qtd);
    yscale = lerp(yscale, 1, _qtd);
}

function desenha_efeito_squash()
{
    draw_sprite_ext(sprite_index, image_index, x, y, xscale * dir, yscale, image_angle, image_blend, image_alpha);
}