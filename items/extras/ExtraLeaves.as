package items.extras
{
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	
	
	/**
	 * ...
	 * @author E
	 */
	public class ExtraLeaves extends Sprite 
	{
		
		private var anim:LeavesRotating = new LeavesRotating();
		private var num:int = 0;
		private var numMAX:int = 69;
		private var cnt:int = 0;
		private var speed:int = 3;
		private var s:Sprite = new Sprite();
		private var dir:String = new String();
		
		public function ExtraLeaves() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(anim);
			addChild(s);
			dir = "e";
			s.x = -45;
			s.y = -60;
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
			if (this.x < -1000) {
				if (this.stage) { this.parent.removeChild(this);}
			}
			
		}
		
	}
	
}