import flash.events.KeyboardEvent;

gilbert.gotoAndStop(1);


stage.addEventListener(KeyboardEvent.KEY_UP, stage_StopChar);

function stage_StopChar(event:KeyboardEvent)
	{
		gilbert.gotoAndStop(1);
	}
	
stage.addEventListener(KeyboardEvent.KEY_DOWN, stage_MoveChar);
	
function stage_MoveChar(event:KeyboardEvent)
	{
		gilbert.nextFrame();
	}

stage.addEventListener(Event.ENTER_FRAME, stage_FrameContoller);

function stage_FrameContoller(event:Event)
{
	trace (gilbert.currentFrame);
	if(gilbert.currentFrame >= 41)
	{
		gilbert.gotoAndPlay(2);
	}
}


stage.addEventListener(KeyboardEvent.KEY_DOWN, stage_CharBoundry);

function stage_CharBoundry(event:KeyboardEvent)
{
	if(event.keyCode== 37 && gilbert.x >= 256)
	{
		gilbert.x -= 4;
		gilbert.scaleX = -1;
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
	}
	
	if (event.keyCode== 39 && gilbert.x <= 768)
	{
		gilbert.x += 4;
		gilbert.scaleX = 1;
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
	}
	
}

