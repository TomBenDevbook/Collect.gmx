///click(image_index)

if argument0==o_target.image_index { o_target.collected++; } else { o_target.collected--; }
o_target.collected=clamp(o_target.collected,0,312);


