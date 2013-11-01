package items
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
	public class GrainTest extends Sprite 
	{
		public function GrainTest() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point	
			[Embed(source = "../assets/extra/grain/growing grain backdrop.png")]
			var c1:Class;
			var b1:Bitmap = new c1();
			var d1:BitmapData = new BitmapData(b1.width, b1.height, true, 0x00000000);
			d1.draw(b1);
			
			[Embed(source = "../assets/extra/grain/growing grain 0007.png")]
			var c2:Class;
			var b2:Bitmap = new c2();
			var d2:BitmapData = new BitmapData(b2.width, b2.height, true, 0x00000000);
			d2.draw(b2);
			
			var s1:Sprite = new Sprite();
			s1.graphics.beginBitmapFill(d1, new Matrix(), false, true);
			s1.graphics.drawRect(0, 0, d1.width, d1.height);
			addChild(s1);
			
			var s2:Sprite = new Sprite();
			s2.graphics.beginBitmapFill(d2, new Matrix(), false, true);
			s2.graphics.drawRect(0, 0, d2.width, d2.height);
			s1.addChild(s2);
			s2.x = s1.width / 2 - s2.width / 2;
			s2.y = s1.height / 2 - s2.height / 2-7;
		}
		
	}
	
}