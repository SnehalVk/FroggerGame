/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 12E6DA99
/// @DnDApplyTo : 224e17fe-7a9b-4ffd-8675-dd7e43924049
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_game_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 3B1D00B1
/// @DnDApplyTo : 224e17fe-7a9b-4ffd-8675-dd7e43924049
/// @DnDArgument : "var" "curr_lives"
/// @DnDArgument : "var_temp" "1"
with(obj_game_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var curr_lives = __dnd_lives;
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 7D48F84C
/// @DnDApplyTo : 224e17fe-7a9b-4ffd-8675-dd7e43924049
/// @DnDArgument : "health" "100"
with(obj_game_controller) {

__dnd_health = real(100);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C0B73ED
/// @DnDArgument : "var" "curr_lives"
/// @DnDArgument : "op" "2"
if(curr_lives > 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 53DD29B4
	/// @DnDParent : 0C0B73ED
	/// @DnDArgument : "objind" "obj_Frog"
	/// @DnDSaveInfo : "objind" "ce55e5fe-c40f-4f44-80cc-21165cea164d"
	instance_change(obj_Frog, true);

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 70529EE5
	/// @DnDApplyTo : ce55e5fe-c40f-4f44-80cc-21165cea164d
	/// @DnDParent : 0C0B73ED
	with(obj_Frog) {
	x = xstart;
	y = ystart;
	}
}