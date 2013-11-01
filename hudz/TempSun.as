package hudz
{
	import com.greensock.easing.Quart;
	import com.greensock.TweenLite;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	
	/**
	 * ...
	 * @author E
	 */
	public class TempSun extends Sprite 
	{
		private var star:Sprite = new Sprite();
		private var pointList:Array = new Array();
		private var delaySpeed:int = 15;
		private var moveSpeed:int = 5;
		
		private var step:int = 0;
		
		public function TempSun() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			pointList.push(0, 75, 150, 225, 300);
			[Embed(source = "../assets/sun.png")]
			var c:Class;
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			var s:Sprite = new Sprite();
			s.graphics.beginBitmapFill(d, new Matrix(), false, true);
			s.graphics.drawRect(0, 0, d.width, d.height);
			s.x = -s.width / 2;
			s.y = -s.height / 2;
			star.addChild(s);
			addChild(star);
			star.x = pointList[0];
			
			var line:Sprite = new Sprite();
			line.graphics.lineStyle(3, 0xffffff, 0.5);
			line.graphics.beginFill(0xffffff, 0.5);
			line.graphics.lineTo(300, 0);
			addChild(line);
			//this.x = 150;// stage.stageWidth / 2 - this.width / 2;
			this.y = 30;
			
			for (var i:int = 0; i < pointList.length;i++ ) {
				var dot:Sprite = new Sprite();
				var size:int = 3;
				if (i == 0 || i == pointList.length-1) { size = 5;}
				dot.graphics.lineStyle(2, 0xffffff, 0.75);
				dot.graphics.beginFill(0xffffff, 0.25);
				dot.graphics.drawCircle(0, 0, size);
				dot.x = pointList[i];
				addChild(dot);
			}
			
			this.x = 150;// stage.stageWidth / 2 - this.width / 2;
			//MoveSun();
		}
		public function StartTimer():void {
			star.x = pointList[0];
			step = 0;
			MoveSun();
			Main.ponyS.play();
		}
		private function MoveSun():void {
			if (step < 4) {
				
				step++;
				if (step == 1) { Main.birdS.play();}
				if (step == 2) { Main.ponyS.play();}
				if (step == 3) { Main.birdS.play();}
				
				
			TweenLite.to(star,moveSpeed, { 
					x:pointList[step], 
					y:0, 
					ease:Quart.easeInOut,
					delay:delaySpeed,
					onComplete:MoveSun, 
					rotation:1080
				} );
			}
			else {
				TimerDone();
				Main.ponyS.play();
			}
			
		}
		
		private function TimerDone():void {
			dispatchEvent(new Event("TimeUp", true));
			//trace("TIME UP");
		}
		
		
	}
	
}