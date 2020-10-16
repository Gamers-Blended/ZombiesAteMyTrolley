/// @description Progress the transition

if (mode != TRANS_MODE.OFF)
{
	// arrived at room
	if (mode == TRANS_MODE.INTRO) // fade bars back out
	{
		// moves towards 0 by reducing by 1/10
		percent = max(0,percent - max((percent/10),0.005));
	}
	else
	{
		// opposite
		percent = min(1.2,percent + max(((1.2-percent)/10),0.005));
	}

	if (percent == 1.2) || (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				// stop black bars
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				// black bars unfolding again
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}
			