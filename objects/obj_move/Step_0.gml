/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E90177F
/// @DnDArgument : "code" "if(hspeed > 0)$(13_10){$(13_10)	if(x > room_width + sprite_width)$(13_10)	{$(13_10)		x = -sprite_width;$(13_10)	}$(13_10)}$(13_10)else if(hspeed < 0)$(13_10){$(13_10)	if(x < -sprite_width)$(13_10)	{$(13_10)		x = room_width + sprite_width;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)/*hspeed = varHspeed;$(13_10)if( x > room_width + sprite_xoffset && direction==0)$(13_10){$(13_10)	x = 0-room_width - sprite_xoffset;	$(13_10)}$(13_10)$(13_10)if( x < 0-sprite_xoffset && direction==180)$(13_10){$(13_10)	x = room_width + sprite_xoffset;	$(13_10)}*/$(13_10)$(13_10)$(13_10)"
if(hspeed > 0)
{
	if(x > room_width + sprite_width)
	{
		x = -sprite_width;
	}
}
else if(hspeed < 0)
{
	if(x < -sprite_width)
	{
		x = room_width + sprite_width;
	}
}


/*hspeed = varHspeed;
if( x > room_width + sprite_xoffset && direction==0)
{
	x = 0-room_width - sprite_xoffset;	
}

if( x < 0-sprite_xoffset && direction==180)
{
	x = room_width + sprite_xoffset;	
}*/


/**/