/// @description Insert description here
// You can write your code in this editor
//this is code that runs continually (or every frame) wjole the player exist


right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("S"));
down = keyboard_check(ord("W"));

if mouse_check_button_pressed(mb_left)
{
	sprite_index = sPlayerAttackOne
	attackOne = true;
}
if mouse_check_button_released(mb_left)
{
	sprite_index = sEVO1;
	attackOne = false;
}



if !pushed
{
	xDirection = right - left;
	xVector = xSpeed*xDirection;
	//check if there is a wall four pixels away from my player
	if (place_meeting(x + xVector, y, oWall))
		{
			//while i am moving towards a wall, if i get four pixels away start moving at a slower pace
			//! means "not"
			while(!place_meeting(x + xVector, y, oWall))
			{
				// only move 1 pixel at a time until i hit a wall
				x = x + xDirection;
			}
			//otherwise stop
			xVector = 0;
		}	
	//otherwise move as normal
	x = x + xVector;
}	

if pushLeft
{
		pushed = true;
		pushLTimer -= 1/room_speed;
		if (!place_meeting(x - (sprite_width/2), y, oWall))
		{
			x-= 4;
		}
		if (pushLTimer <= 0)
		{
			pushLeft = false;
			pushed = false;
			pushLTimer = 0.15;
		}
}

if pushRight
{
		pushed = true;
		pushRTimer -= 1/room_speed;
		if (!place_meeting(x + (sprite_width/2), y, oWall))
		{
			x += 4;
		}
		if (pushRTimer <= 0)
		{
			pushRight = false;
			pushed = false;
			pushRTimer = 0.15;
		}
}


yDirection = up - down;
yVector = ySpeed*yDirection;
if (place_meeting(x, y + yVector, oWall))
	{
		//while i am moving towards a wall, if i get four pixels away start moving at a slower pace
		//! means "not"
		while(!place_meeting(x, y + yVector, oWall))
		{
			// only move 1 pixel at a time until i hit a wall
			y = y + yDirection;
		}
		//otherwise stop
		yVector = 0;
	
		
	}	
//otherwise move as normal

y = y + yVector;


if isInvincible
{
	invTimer -=1/room_speed;
	if flashAlpha > 0
	{
		flashAlpha -= 0.1;	
	}
	if flashAlpha <= 0
	{
		flashAlpha = 1; 
	}
	if (invTimer <= 0)
	{
		isInvincible = false;
		invTimer = 3;
		flashAlpha = 0;
	}
}
