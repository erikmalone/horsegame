package hudz
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import hudz.NumberBox;
	
	/**
	 * ...
	 * @author E
	 */
	public class TempHud extends Sprite 
	{
		private var counter:NumberBox = new NumberBox(0.75);
		private var box:Sprite = new Sprite();
		private var apple:Sprite = new Sprite();
		
		private var sun:TempSun = new TempSun();
		private var dist:TempBox = new TempBox();
		
		public function TempHud() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			[Embed(source = "../assets/fruit/Red Apple1.png")]
			var c:Class;
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			apple.graphics.beginBitmapFill(d, new Matrix, false, true);
			apple.graphics.drawRect(0, 0, d.width, d.height);
			box.graphics.lineStyle(3, 0xa7a7a7, 0.5);
			box.graphics.beginFill(0, 0.1);
			box.graphics.drawRoundRect(0, 0, 100, 50, 25, 25);
			addChild(box);
			addChild(apple);
			addChild(counter);
			counter.UpdateNumber(0);
			box.x = box.y = 5;
			addChild(counter);
			counter.UpdateNumber(0);
			
			apple.x = box.x + 3;
			counter.x = apple.x + apple.width + 5;
			counter.UpdateNumber(0);
			apple.y = box.y + box.height / 2 - apple.height / 2;
			counter.y = box.y + box.height / 2 - counter.height / 2;
			box.x = box.y = 5;
			
			addChild(sun);
			addChild(dist);
			
			//5+100 210 600 - 210 = 390 - 50 = 340//
			addEventListener(Event.ENTER_FRAME, eFrame);
			
			//150 to 500
		}
		public function UpdateAppleCount(num:int):void {
			counter.x = apple.x + apple.width + 5;
			counter.UpdateNumber(num);
		}
		public function UpdateDistanceCount(num:int):void {
			dist.UpdateNumber(num);
		}
		public function UpdateTimer():void {
			sun.StartTimer();
		}
		private function eFrame(e:Event):void {
			//trace(mouseX + "|" + mouseY);
		}
		
	}
	
}