// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerHurt()
{
	if (!oEVO1.isInvincible)
	{
		oEVO1.isInvincible = true;
		oEVO1.hp --;
		flashAlpha = 1;
		//to subtract more damage instead of -- do -= what ever number
		if (oEVO1.hp < 1)
		{
			PlayerDeath();	
		}
	}
}

function PlayerDeath()
{
	room_restart();	
}
