import flash.events.KeyboardEvent;
import flash.events.Event;

gilbert.gotoAndStop(1);


stage.addEventListener(KeyboardEvent.KEY_UP, stage_StopChar);

function stage_StopChar(event:KeyboardEvent)
	{
		gilbert.gotoAndStop(1);
	}
	


stage.addEventListener(KeyboardEvent.KEY_DOWN, stage_CharBoundry);

function stage_CharBoundry(event:KeyboardEvent)
{
	trace (gilbert.currentFrame);
	if(gilbert.currentFrame >= 41)
	{
		gilbert.gotoAndPlay(2);
	}
	
	if(event.keyCode== 37 && gilbert.x >= 256)
	{
		gilbert.x -= 4;
		gilbert.scaleX = -1;
		gilbert.nextFrame();
	}
	
	else if(event.keyCode== 37 && gilbert.x < 256)
	{
		foreGround.x += 4; 
		frontHills.x += 3.8;
		backHills.x += 3.6;
		clouds.x += 3;
		backGround.x += 3.4;
		gilbert.x == 256;
		gilbert.scaleX = -1;
		gilbert.nextFrame();
	}
	
	if (event.keyCode== 39 && gilbert.x <= 768)
	{
		gilbert.x += 4;
		gilbert.scaleX = 1;
		gilbert.nextFrame();
	}
	else if(event.keyCode== 39 && gilbert.x > 768)
	{
		foreGround.x -= 4; 
		frontHills.x -= 3.8;
		backHills.x -= 3.6;
		clouds.x -= 3;
		backGround.x -= 3.4;
		gilbert.x == 768;
		gilbert.scaleX = 1;
		gilbert.nextFrame();
	}
	
}

stage.addEventListener(KeyboardEvent.KEY_DOWN, stage_CharJump);
	
function stage_CharJump(event:KeyboardEvent)
{
	if (event.keyCode == 38)
	{
		if(gilbert.currentFrame < 42 || gilbert.currentFrame == 78)
		{
		gilbert.gotoAndPlay (43);
		}
	}
}	


