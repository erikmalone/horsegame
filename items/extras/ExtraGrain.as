package items.extras
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	
	
	/**
	 * ...
	 * @author E
	 */
	public class ExtraGrain extends Sprite 
	{
		
		private var anim:GrainGrowing = new GrainGrowing();
		private var num:int = 0;
		private var numMAX:int = 11;
		private var cnt:int = 0;
		private var speed:int = 6;
		private var s:Sprite = new Sprite();
		private var s1:Sprite = new Sprite();
		private var dir:String = new String();
		
		public function ExtraGrain() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(anim);
			//[Embed(source="../../assets/extra/grain/growing grain backdrop.png")]
			[Embed(source="../../assets/extra/grain/back2.png")]
			var c1:Class;
			var b1:Bitmap = new c1();
			var d1:BitmapData = new BitmapData(b1.width, b1.height, true, 0x00000000);
			d1.draw(b1);
			//private var s1:Sprite = new Sprite();
			s1.graphics.beginBitmapFill(d1, new Matrix(), false, true);
			s1.graphics.drawRect(0, 0, d1.width, d1.height);
			addChild(s1);
			
			s.x = s1.width / 2 - s.width / 2;
			s.y = s1.height / 2 - s.height / 2-10;
			
			addChild(s);
			
			s1.x = -s1.width/2;
			s1.y = -s1.height/2-20;
			dir = "e";
			addEventListener(Event.ENTER_FRAME, eFrame);
		}
		private function eFrame(e:Event):void {
			//s.graphics.clear();
			cnt++;
			if (cnt == speed) { cnt = 0;
				
				var d:BitmapData = anim.GetData(dir, num);
				s.graphics.clear();
				s.graphics.beginBitmapFill(d, null, false, true);
				s.graphics.drawRect(0, 0, d.width, d.height);
				s.x = s1.x+s1.width / 2 - s.width / 2;
				s.y = s1.y+s1.height / 2 - s.height / 2-10;
				num++;
				if (num > numMAX) { 
					removeEventListener(Event.ENTER_FRAME, eFrame);
					num = 0;}
			}
			
		}
		
	}
	
}