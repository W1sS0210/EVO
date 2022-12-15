 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHurt()
{
	if (!other.isInvincible)
	{
		oEVO1.isInvincible = true;
		other.hp --;
		//to subtract more damage instead of -- do -= what ever number
		if (other.hp < 1)
		{
			EnemyDeath();	
		}
	}
}

function EnemyDeath()
{
	instance_destroy(other); 
}
