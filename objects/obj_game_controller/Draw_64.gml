/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 4D189064
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "50"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(50, 50, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 7EFAF4E9
/// @DnDArgument : "var" "time"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var time = __dnd_health;

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3FDE0FBA
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" ""Time Left: ""
draw_text(50, 10, string("Time Left: ") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 593D95A2
/// @DnDApplyTo : 224e17fe-7a9b-4ffd-8675-dd7e43924049
/// @DnDArgument : "x1" "150"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "x2" "500"
/// @DnDArgument : "y2" "30"
/// @DnDArgument : "value" "time"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
with(obj_game_controller) draw_healthbar(150, 10, 500, 30, time, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 14DB7FDA
/// @DnDArgument : "x" "800"
/// @DnDArgument : "y" "35"
/// @DnDArgument : "sprite" "spr_Frog"
/// @DnDSaveInfo : "sprite" "011d92e9-c809-4680-a81c-2c9f91968aac"
var l14DB7FDA_0 = sprite_get_width(spr_Frog);
var l14DB7FDA_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l14DB7FDA_2 = __dnd_lives; l14DB7FDA_2 > 0; --l14DB7FDA_2) {
	draw_sprite(spr_Frog, 0, 800 + l14DB7FDA_1, 35);
	l14DB7FDA_1 += l14DB7FDA_0;
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 383B5ACF
/// @DnDArgument : "var" "curr_lives"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var curr_lives = __dnd_lives;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 429B3C68
/// @DnDArgument : "var" "curr_lives"
/// @DnDArgument : "op" "3"
if(curr_lives <= 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 52B1476D
	/// @DnDParent : 429B3C68
	/// @DnDArgument : "x" "200"
	/// @DnDArgument : "y" "500"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" ""Game over !! Press R to restart""
	draw_text_transformed(200, 500, "" + string("Game over !! Press R to restart"), 2, 2, 0);
}