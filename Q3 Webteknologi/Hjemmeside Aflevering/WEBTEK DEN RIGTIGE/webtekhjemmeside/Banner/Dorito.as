package  {
	import flash.events.Event;
	import flash.display.Sprite;
	
	public class Dorito extends Sprite{

		private var _ySpeed:Number;
		private var _rotationSpeed:Number;
		
		public function Dorito() {
			addEventListener(Event.ADDED_TO_STAGE, init, false, 0, true);
		}
		
		private function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			reset(true);
			
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e:Event):void
		{
			y += _ySpeed;
			rotation += _rotationSpeed;
			
			if(y > stage.stageHeight + height/2 + 25)
			{
				reset();
			}
		}
		
		private function reset(first:Boolean = false):void
		{
			_ySpeed = 5 + Math.random() * 25;
			_rotationSpeed = Math.random() * 20 - 10;
			
			if(first)
				y = Math.random() * stage.stageHeight;
			else
				y = - height/2;
			x = Math.random() * stage.stageWidth;
		}

	}
	
}
