/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 289FCD3D
/// @DnDArgument : "var" "eggs_taken"
/// @DnDArgument : "object" "obj_eggTaken"
/// @DnDSaveInfo : "object" "ceda8729-3e83-48f1-90de-57baf5e63b05"
eggs_taken = instance_number(obj_eggTaken);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 26EB2CCA
/// @DnDApplyTo : 224e17fe-7a9b-4ffd-8675-dd7e43924049
/// @DnDArgument : "health" "30"
with(obj_game_controller) {

__dnd_health = real(30);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09373989
/// @DnDArgument : "var" "eggs_taken"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5"
if(eggs_taken >= 5)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 214A7955
	/// @DnDApplyTo : ceda8729-3e83-48f1-90de-57baf5e63b05
	/// @DnDParent : 09373989
	/// @DnDArgument : "objind" "obj_Egg"
	/// @DnDSaveInfo : "objind" "1e1fbdb7-eec5-4040-8259-bbc0f421be96"
	with(obj_eggTaken) instance_change(obj_Egg, true);
}