/// @description Insert description here
// You can write your code in this editor
 if attackOne
 {
	 EnemyHurt();
 }

else
{
	if (!isInvincible)
	{ 
		if (x > other.x)
		{
			pushRight = true;
		}
		if (x < other.x)
		{
			pushLeft = true;
		}
		
	}
	PlayerHurt();
}
