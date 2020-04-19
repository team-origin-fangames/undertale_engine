Flag_Load(FLAG_TYPE.DYNAMIC);
var sans_met = Flag_Get(FLAG_TYPE.DYNAMIC,FLAG_DYNAMIC.SANS_MET);
switch (sans_met)
{
	case 0:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.0"));
		Dialog_Start();
		_ready_first = true;
		break;
	
	case 1:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.1"));
		Dialog_Start();
		_ready_subsequent = true;
		break;
	
	case 2:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.2"));
		Dialog_Start();
		_ready_subsequent = true;
		break;
			
	case 3:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.3"));
		Dialog_Start();
		_ready_subsequent = true;
		break;
	
	case 4:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.4"));
		Dialog_Start();
		_ready_subsequent = true;
		break;	
		
	case 5:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.5"));
		Dialog_Start();
		_ready_subsequent = true;
		break;
		
	case 6:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.6"));
		Dialog_Start();
		_ready_subsequent = true;
		break;
		
	case 7:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.7"));
		Dialog_Start();
		_ready_subsequent = true;
		break;
		
	case 8:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.8"));
		Dialog_Start();
		_ready_subsequent = true;
		break;

	default:
		Dialog_Add(Lang_GetString("dialog.multiverse.sans.met.default"));
		Dialog_Start();
		_ready_subsequent = true;
		break;
}