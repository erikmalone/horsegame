package items
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import items.extras.ExtraGrain;
	import items.extras.ExtraLeaves;
	/**
	 * ...
	 * @author E
	 */
	public class ItemGetter extends Sprite 
	{
		public var apppleRedData:BitmapData;
		public var treeArray:Array = new Array();
		
		public function ItemGetter() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			SetUp();
		}
		public function GetSprite(type:String):Sprite {
			var s:Sprite;
			if (type == "apple") {
				s = new ItemTemp(apppleRedData);
			}
			if (type == "tree") {
				s = new ItemTemp(treeArray[Math.floor(Math.random()*3)]);
			}
			if (type == "grain") {
				s = new ExtraGrain();
			}
			if (type == "leaves") {
				s = new ExtraLeaves();
			}
			return s;
		}
		private function SetUp():void {
			[Embed(source = "../assets/fruit/Red Apple2.png")]
			var appleC:Class;
			apppleRedData = GetBitmapData(appleC);
			
			[Embed(source = "../assets/outdoorSTUFF/treesix.png")]
			var treesixC:Class;
			var treesixB:Bitmap = new treesixC();
			var treesixD:BitmapData = new BitmapData(treesixB.width, treesixB.height, true, 0x00000000);
			treesixD.draw(treesixB);
			
			for (var i:int = 0; i < 3; i++) {
				var d:BitmapData = new BitmapData(96, 96, true, 0x00000000);
				//data.copyPixels(copperData, new Rectangle(i * 32, 0, 32, 32), new Point(0, 0));
				d.copyPixels(treesixD, new Rectangle(i * 96, 0, 96, 96), new Point(0, 0));
				//d.draw(treesixB, null, null, null, new Rectangle(i * 96, 0, 96, 96));
				treeArray.push(d);
				
			}
			
			
		/*	var s:Sprite = new Sprite();
			addChild(s);
			var a:Sprite = new Sprite();
			a.graphics.beginBitmapFill(appleD, new Matrix(), false,false);
			a.graphics.drawRect(0,0, appleB.width, appleB.height);
			s.addChild(a);
			a.x = -a.width / 2;
			a.y = -a.height / 2;
			trace(appleD.width);*/
		}
		private function GetBitmapData(c:Class):BitmapData {
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
	}
	
}