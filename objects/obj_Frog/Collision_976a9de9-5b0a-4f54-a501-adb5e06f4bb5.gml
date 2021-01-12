/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 54256F4E
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "object" "obj_platform"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "a71a4e36-fb44-42fa-af17-8898ba105996"
var l54256F4E_0 = instance_place(x, y, obj_platform);
if (!(l54256F4E_0 > 0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 207A1325
	/// @DnDParent : 54256F4E
	/// @DnDArgument : "soundid" "snd_frogKilled"
	/// @DnDSaveInfo : "soundid" "a167deee-e1ed-4a0d-a353-b6ca52f638fd"
	audio_play_sound(snd_frogKilled, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 46444A0D
	/// @DnDParent : 54256F4E
	/// @DnDArgument : "objind" "obj_death"
	/// @DnDSaveInfo : "objind" "ccae0b01-ea30-4e1c-a6cc-534d249f1fb4"
	instance_change(obj_death, true);
}