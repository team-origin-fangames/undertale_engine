/// @arg enable_karma

var enable_karma = argument[0];

Flag_Set(FLAG_TYPE.DYNAMIC, FLAG_DYNAMIC.KARMA_ENABLED, enable_karma);

return true;