package hudz
{
	import com.greensock.plugins.DropShadowFilterPlugin;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.filters.DropShadowFilter;
	import flash.geom.Matrix;
	
	/**
	 * ...
	 * @author E
	 */
	public class TempBox extends Sprite 
	{
		private var box:Sprite = new Sprite();
		private var numbers:NumberBox = new NumberBox(0.5);
		public function TempBox() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			box.graphics.lineStyle(3, 0xa7a7a7, 0.5);
			box.graphics.beginFill(0, 0.1);
			box.graphics.drawRoundRect(0, 0, 100, 50, 25, 25);
			addChild(box);
			box.x = stage.stageWidth - box.width - 5;
			box.y = 5;
			
			[Embed(source = "../assets/Dis2.png")]
			var c:Class;
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			var title:Sprite = new Sprite();
			title.graphics.beginBitmapFill(d, new Matrix(), false, true);
			title.graphics.drawRect(0, 0, d.width, d.height);
			addChild(title); //title.alpha = 0.25;
			title.filters = [new DropShadowFilter(4, 45, 0, 0.5, 4, 4, 1, 1, false, false, false)];
			title.x = box.x + box.width / 2 - title.width / 2;
			title.y = box.y;// + box.height / 2 - title.height / 2;
			
			addChild(numbers);
			numbers.UpdateNumber(0);
			numbers.x = box.x + box.width / 2 - numbers.width / 2;
			numbers.y = box.y + box.height - numbers.height-5;
			
		}
		public function UpdateNumber(num:int):void {
			numbers.UpdateNumber(num);
			numbers.x = box.x + box.width / 2 - numbers.width / 2;
		}
		
	}
	
}