package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextFormatDisplay;
	import items.extras.ExtraBird;
	import items.extras.ExtraFly;
	import items.extras.ExtraRabbit;
	
	/**
	 * ...
	 * @author E
	 */
	public class ExtraItems extends Sprite 
	{
		private var bird:ExtraBird = new ExtraBird();
		private var fly:ExtraFly = new ExtraFly();
		private var fly2:ExtraFly = new ExtraFly();
		private var fly3:ExtraFly = new ExtraFly();
		
		private var rabbit:ExtraRabbit = new ExtraRabbit();
		//private var rabbit2:ExtraRabbit = new ExtraRabbit();
		
		private var con:Sprite = new Sprite();
		public function ExtraItems() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(con);
			addChild(bird);
			addChild(rabbit);
			//addChild(rabbit2);
			addChild(fly);
			addChild(fly2); fly2.type = "yellow";
			//addChild(fly3); fly3.type = "red";
		//200 to 375
			bird.dir = "w";
			bird.x = stage.stageWidth + 100;
			
			//fly.dir = "w";
			fly.x = stage.stageWidth +100;
			
			rabbit.x = stage.stageWidth + 100;
			//rabbit2.x = stage.stageWidth + 100;
		}
		public function Run():void {
			bird.Run();
			fly.Run();
			fly2.Run();
			//fly3.Run();
			rabbit.Run();
			//rabbit2.Run();
			
		}
		public function UpdateVX(vx:Number):void {
			//bird.x -= vx;
			bird.x -= vx;
			fly.x -= vx;
			fly2.x -= vx;
			//fly3.x -= vx;
			//rabbit2.x -= vx;
			rabbit.x -= vx;
			
			
			Run();
		}
		
	}
	
}