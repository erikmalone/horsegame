package hudz
{
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
	public class NumberBox extends Sprite 
	{
		private var scale:Number = 1;
		
		private var DataList:Array = new Array();
		
		private var number:Sprite = new Sprite();
		
		private var cnt:int = 0;
		private var num:int = 0;
		
		public function NumberBox(_scale:Number) { scale = _scale;
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			
			
			CreateBitmapDataArray();
			addChild(number);
			
			UpdateNumber(0);
			//addEventListener(Event.ENTER_FRAME, eFrame);
			//this.scaleX = this.scaleY = 0.5;
			this.filters = [new DropShadowFilter(4, 45, 0, 0.5, 4, 4, 1, 1, false, false, false)];
		}
		private function eFrame(e:Event):void {
			cnt++;
			if (cnt == 5) {
				cnt = 0;
				num++;
				if (num >= 100) { num = 0; }
				UpdateNumber(num);
			}
		}
		public function UpdateNumber(count:int):void {
			
			var d:BitmapData;
			var b1:BitmapData;
			var b2:BitmapData;
			
			var ones:int = 0; 
			var tens:int = 0;
			var mat:Matrix;
			
			if (count >= 10) {
				ones = int(String(count).charAt(1));
				tens = int(String(count).charAt(0));
				b1 = DataList[tens];
				b2 = DataList[ones];
				mat = new Matrix(1, 0, 0, 1, b1.width, 0);
				d = new BitmapData(b1.width + b2.width, b1.height, true, 0x00000000);
				d.draw(b1);
				d.draw(b2, mat);
			}
			else {
				b1 = DataList[count];
				d = new BitmapData(b1.width, b1.height, true, 0x00000000);
				d.draw(b1);
			}
			
			
			
			number.graphics.clear();
			number.graphics.beginBitmapFill(d, new Matrix, false);
			number.graphics.drawRect(0, 0, d.width, d.height);
			
			//number.x = -number.width / 2;
		}
		private function CreateBitmapDataArray():void {
			[Embed(source = "../assets/tempassets/numz/ZERO.png")]
			var c0:Class;
			[Embed(source = "../assets/tempassets/numz/ONE.png")]
			var c1:Class;
			[Embed(source = "../assets/tempassets/numz/TWO.png")]
			var c2:Class;
			[Embed(source = "../assets/tempassets/numz/THREE.png")]
			var c3:Class;
			[Embed(source = "../assets/tempassets/numz/FOUR.png")]
			var c4:Class;
			[Embed(source = "../assets/tempassets/numz/FIVE.png")]
			var c5:Class;
			[Embed(source = "../assets/tempassets/numz/SIX.png")]
			var c6:Class;
			[Embed(source = "../assets/tempassets/numz/SEVEN.png")]
			var c7:Class;
			[Embed(source = "../assets/tempassets/numz/EIGHT.png")]
			var c8:Class;
			[Embed(source = "../assets/tempassets/numz/NINE.png")]
			var c9:Class;
			
			var a:Array = new Array();
			a.push(c0, c1, c2, c3, c4,c5, c6, c7, c8, c9);
			for (var i:int = 0; i < a.length; i++) {
				DataList.push(GetBitmapData(a[i]));
			}
			
		}
		private function GetBitmapData(c:Class):BitmapData 
		{
			
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width*scale, b.height*scale, true, 0x00000000);
			var mat:Matrix = new Matrix();
			mat.scale(scale, scale);
			d.draw(b,mat);
			return d;
			
		}
		
	}
	
}