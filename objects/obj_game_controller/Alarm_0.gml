/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 041D0975
/// @DnDArgument : "op" "2"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0C32C7A9
	/// @DnDParent : 041D0975
	/// @DnDArgument : "steps" "room_speed*1"
	alarm_set(0, room_speed*1);

	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 7B03791D
	/// @DnDParent : 041D0975
	/// @DnDArgument : "var" "time"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var time = __dnd_health;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 503E9A4D
	/// @DnDParent : 041D0975
	/// @DnDArgument : "var" "time"
	/// @DnDArgument : "op" "3"
	if(time <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4E2EACEE
		/// @DnDApplyTo : ce55e5fe-c40f-4f44-80cc-21165cea164d
		/// @DnDParent : 503E9A4D
		/// @DnDArgument : "objind" "obj_death"
		/// @DnDSaveInfo : "objind" "ccae0b01-ea30-4e1c-a6cc-534d249f1fb4"
		with(obj_Frog) instance_change(obj_death, true);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3ED112B8
	/// @DnDParent : 041D0975
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 0D4F2C99
		/// @DnDParent : 3ED112B8
		/// @DnDArgument : "health" "-2"
		/// @DnDArgument : "health_relative" "1"
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-2);
	}
}