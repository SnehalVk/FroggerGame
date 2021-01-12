/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 7904C19D
audio_stop_all();

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 39B5C937

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 54D736D5
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 3BC8BE9D
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 23842209
/// @DnDArgument : "steps" "room_speed*1"
alarm_set(0, room_speed*1);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 632D14A0
/// @DnDArgument : "soundid" "snd_backgroundMusic"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "550e68f8-597f-4e28-aac6-1c3b85a39ec1"
audio_play_sound(snd_backgroundMusic, 0, 1);