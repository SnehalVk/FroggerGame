/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31DF37AD
/// @DnDArgument : "code" "inst = instance_place(x,y,obj_platform);$(13_10)if (inst)$(13_10){$(13_10)	hspeed = inst.hspeed;$(13_10)}$(13_10)else$(13_10){$(13_10)	hspeed = 0;$(13_10)}"
inst = instance_place(x,y,obj_platform);
if (inst)
{
	hspeed = inst.hspeed;
}
else
{
	hspeed = 0;
}