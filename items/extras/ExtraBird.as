package items.extras
{
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import items.extras.RabbitWalking;
	
	/**
	 * ...
	 * @author E
	 */
	public class ExtraBird extends Sprite 
	{
		
		private var anim:BirdFlying = new BirdFlying();
		private var num:int = 0;
		private var numMAX:int = 15;
		private var cnt:int = 0;
		private var speed:int = 3;
		private var s:Sprite = new Sprite();
		public var dir:String = new String();
		
		public var vx:int = 0;
		
		public function ExtraBird() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(s);
			vx = 5;
			dir = "e";
			addEventListener(Event.ENTER_FRAME, eFrame);
		}
		private function eFrame(e:Event):void {
			//s.graphics.clear();
			cnt++;
			if (cnt == 3) { cnt = 0;
				
				var d:BitmapData = anim.GetData(dir, num);
				s.graphics.clear();
				s.graphics.beginBitmapFill(d, null, false, true);
				s.graphics.drawRect(0, 0, d.width, d.height);
				num++;
				if (num > numMAX) { num = 0;}
			}
			
		}
		public function Run():void {
			this.x -= vx;
			if (this.x < -100) {
				vx = 3 + (Math.random()*5)
				this.x = stage.stageWidth + 5000 + Math.random();;
				this.y = 150 * Math.random();
			}
		}
		
	}
	
}