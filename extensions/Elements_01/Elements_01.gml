#define browser_full_window
///browser_full_window()

// fill full browser window with room in proper aspect ratio

// © TomBen 2014


var ratio,size_x,size_y;

ratio=max(room_width/browser_width,room_height/browser_height);
size_x=room_width/ratio;
size_y=room_height/ratio;
x=browser_width-size_x;
y=browser_height-size_y;

if os_browser != browser_not_a_browser
{
ratio=max(room_width/browser_width,room_height/browser_height); //compute ratio    room_size : window size
size_x=room_width/ratio;    //horizontal aspect
size_y=room_height/ratio;   //vertical aspect
x=browser_width-size_x;     //if browser has different aspect ratio than room some difference appears in x,y 
y=browser_height-size_y;    //own position is used ( object is invisible )

window_set_rectangle(x/2,y/2,size_x,size_y); //if there is a border in any direction, window is centered 
}

return(0);



#define set_font
///set_font(align_0to9,color,alpha,font__reference);


switch(argument0)
{
case 1: draw_set_halign(fa_left); draw_set_valign(fa_bottom); break;
case 2: draw_set_halign(fa_center); draw_set_valign(fa_bottom); break;
case 3: draw_set_halign(fa_right); draw_set_valign(fa_bottom); break;

case 4: draw_set_halign(fa_left); draw_set_valign(fa_middle); break;
case 5: draw_set_halign(fa_center); draw_set_valign(fa_middle); break;
case 6: draw_set_halign(fa_right); draw_set_valign(fa_middle); break;

case 7: draw_set_halign(fa_left); draw_set_valign(fa_top); break;
case 8: draw_set_halign(fa_center); draw_set_valign(fa_top); break;
case 9: draw_set_halign(fa_right); draw_set_valign(fa_top); break;

default:break; //no_change
}

if argument1!=-1 draw_set_color(argument1);
if argument2!=-1 draw_set_alpha(argument2);
if argument3!=-1 draw_set_font(argument3);




#define draw_ballpoint_15
//usage=draw_ballpoint_15(x,y,fill,shadow,shine);



var backsavealpha;
backsavealpha=draw_get_alpha();
draw_set_alpha(0.1);
draw_circle_color(argument0,argument1,15.5,argument3,argument3,1);
draw_set_alpha(0.2);
draw_circle_color(argument0,argument1,15.4,argument3,argument3,1);
draw_set_alpha(0.3);
draw_circle_color(argument0,argument1,15.3,argument3,argument3,1);
draw_set_alpha(0.4);
draw_circle_color(argument0,argument1,15.2,argument3,argument3,1);
draw_set_alpha(0.5);
draw_circle_color(argument0,argument1,15.1,argument3,argument3,1);
draw_set_alpha(1);
draw_circle_color(argument0,argument1,15,argument2,argument3,0);
draw_circle_color(argument0-4,argument1-4,5,argument4,argument2,0);
draw_set_alpha(backsavealpha);

return(0);



#define blekota
///blekota()

var qwaq='';

qwaq+=choose('T','M','K','H','B','D','S','V','W','P','F');
qwaq+=choose('L','R','');
qwaq+=choose('A','I','O','U');
qwaq+=choose('T','R','M','K','H','B','D','S','V','W','P','F','G');
qwaq+=choose('E','Y','U','A','U');
qwaq+=choose('R','M','K','S','B','V','P','L','J','','','');

return(qwaq);




#define computer_time
///computer_time()

//                             //
//      TomBen script pack     //
//      © TomBen 2013          //
//                             //


// version: GMS 1.2

//Použití:
//T = computer_time(); draw_text(x,y,T);
//
//vrací string s aktuálním èasem podle systémového formátování

return(date_time_string(date_current_datetime()));



#define is_between
//is_between (min,X,max)

return ((argument0<=argument1)&&(argument1<=argument2));




#define mouse_on
///mouse_on()

//                             //
//      TomBen script pack     //
//      © TomBen 2013          //
//                             //


// version: GML 8.0

//Použití:
//mouse_on()
//
//vrací true pokud je myš nad spritem objektu
//vrací false pokud myš není nad spritem objektu

if sprite_index==-1
{
return(false);
}
else
{
return (collision_point(mouse_x,mouse_y,all,1,0)==id); 
}



//end




#define print_ds_list
///print_ds_list(ds_list_ref,max_printed_items_int, start_at_item_int);

var i=argument2; //start at ( from 0 to ds_list_size )

repeat(argument1) //max_printed
{
if i<ds_list_size(argument0) draw_text(x,y+(i*20),string(ds_list_find_value(argument0,i)));
i++;
}


#define string_trim
///string_trim(string)
// ==string minus last char

return(string_copy(string(argument0),1,string_length(string(argument0))-1));



#define timemark
///timemark()

//                             //
//      TomBen script pack     //
//      © TomBen 2013          //
//                             //


// version: GMS 1.2

//Použití:
//T1 = timemark();   { ...some code... }    T2 = timemark();       draw_text(x,y,string(T2-T1));
//
//vrací string s aktuálním èasem podle systémového formátování

return(get_timer());



#define wait
///wait(integer_sleep_CPU_cycles);

var n=0; repeat(argument0) {n++};
return(n);



#define pascript
///pascript() generates string of pass
//pretty hard to be tracked in obfuscated javascript


var a,b,c,d,e,f,g;

a='pufpufdazeloop'
b='kaypsohund'
c='nocturnshield'
d='holybolyturn'
e='jungosalemako'
f='zikoradobarbuch'
g='harumfarumfimfum'

return(string_copy(a,5,3)+string_copy(e,7,2)+string_copy(c,3,3)+string_copy(d,1,3)+string_copy(b,2,3)+string_copy(b,6,3)+string_copy(g,4,3)+string_copy(a,8,3));





