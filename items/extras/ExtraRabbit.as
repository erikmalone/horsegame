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
	public class ExtraRabbit extends Sprite 
	{
		
		private var anim:RabbitWalking = new RabbitWalking();
		private var num:int = 0;
		private var numMAX:int = 7;
		private var cnt:int = 0;
		private var speed:int = 3;
		private var s:Sprite = new Sprite();
		private var dir:String = new String();
		
		private var vx:Number = 5;
		
		public function ExtraRabbit() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(s);
			dir = "w";
			this.y = 200+ (Math.random()*175);
			addEventListener(Event.ENTER_FRAME, eFrame);
		}
		private function eFrame(e:Event):void {
			//s.graphics.clear();
			cnt++;
			if (cnt == 2) { cnt = 0;
				
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
				vx = 1 + (Math.random()*2)
				this.x = stage.stageWidth +  (Math.random()*4000);
				this.y = 200+ (Math.random()*175);
				//200 to 375
			}
		}
		
	}
	
}