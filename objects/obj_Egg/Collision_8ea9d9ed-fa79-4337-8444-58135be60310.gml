/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 2356F229
/// @DnDApplyTo : ce55e5fe-c40f-4f44-80cc-21165cea164d
with(obj_Frog) {
x = xstart;
y = ystart;
}

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 08E705B0
/// @DnDApplyTo : 224e17fe-7a9b-4ffd-8675-dd7e43924049
/// @DnDArgument : "score" "25"
/// @DnDArgument : "score_relative" "1"
with(obj_game_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(25);
}

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 370EC570
/// @DnDArgument : "objind" "obj_eggTaken"
/// @DnDSaveInfo : "objind" "ceda8729-3e83-48f1-90de-57baf5e63b05"
instance_change(obj_eggTaken, true);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0B8651FD
/// @DnDArgument : "soundid" "snd_eggTaken"
/// @DnDSaveInfo : "soundid" "7002a8db-07c7-4977-bd65-93896616b986"
audio_play_sound(snd_eggTaken, 0, 0);