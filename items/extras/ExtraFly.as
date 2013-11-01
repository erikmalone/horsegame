package items.extras
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.ShaderPrecision;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author E
	 */
	public class ExtraFly extends Sprite 
	{
		private var redArray:Array = new Array();
		private var greenArray:Array = new Array();
		private var yellowArray:Array = new Array();
		
		private var fly:Sprite = new Sprite();
		private var s:Sprite = new Sprite();
		
		private var num:int = 0;
		private var numMAX:int = 1;
		private var cnt:int = 0;
		private var speed:int = 4;
		private var dir:String = new String();
		public var type:String = "green";
		
		private var vx:int = 5;
		
		public function ExtraFly() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			[Embed(source = "../../assets/extra/fly/green dragonfly w0000.png")]
			var c1G:Class;
			var b1G:Bitmap = new c1G();
			greenArray.push(GetBMPData(b1G));
			[Embed(source = "../../assets/extra/fly/green dragonfly w0001.png")]
			var c2G:Class;
			var b2G:Bitmap = new c2G();
			greenArray.push(GetBMPData(b2G));
			
			[Embed(source = "../../assets/extra/fly/red dragonfly w0000.png")]
			var c1R:Class;
			var b1R:Bitmap = new c1R();
			redArray.push(GetBMPData(b1R));
			[Embed(source = "../../assets/extra/fly/red dragonfly w0001.png")]
			var c2R:Class;
			var b2R:Bitmap = new c2R();
			redArray.push(GetBMPData(b2R));
			
			[Embed(source = "../../assets/extra/fly/yellow dragonfly w0000.png")]
			var c1Y:Class;
			var b1Y:Bitmap = new c1Y();
			yellowArray.push(GetBMPData(b1Y));
			[Embed(source = "../../assets/extra/fly/yellow dragonfly w0001.png")]
			var c2Y:Class;
			var b2Y:Bitmap = new c2Y();
			yellowArray.push(GetBMPData(b2Y));
			
			
			s.addChild(fly);
			addChild(s);
			
			
			vx = 5;
			dir = "e";
			
			s.x = s.y = 100;
			addEventListener(Event.ENTER_FRAME, eFrame);
		}
		private function eFrame(e:Event):void {
			
			//s.graphics.clear();
			cnt++;
			if (cnt == speed) { cnt = 0;
				var d:BitmapData;
				if (type == "red") { d = redArray[num]; }
				else if (type == "green") { d = greenArray[num]; }
				else if (type == "yellow") { d = yellowArray[num]; } 
				
				
				fly.graphics.clear();
				fly.graphics.beginBitmapFill(d, null, false, true);
				fly.graphics.drawRect(0, 0, d.width, d.height);
				fly.x = -fly.width / 2;
				fly.y = -fly.height / 2;
				num++;
				if (num > numMAX) { 
					//removeEventListener(Event.ENTER_FRAME, eFrame);
					num = 0;}
			}
			
		
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		public function Run():void {
			this.x -= vx;
			if (this.x < -100) {
				vx = 1 + (Math.random()*5)
				this.x = stage.stageWidth + (5000* Math.random());
				this.y = 150 + (Math.random() * 150);
				//200 to 375
			}
		}
		
	}
	
}