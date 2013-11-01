package bg
{
	import com.greensock.easing.Quad;
	import com.greensock.TweenLite;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author E
	 */
	public class Layer3 extends Sprite 
	{
		public function Layer3() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			//[Embed(source="../assets/layer3.png")]
			//[Embed(source="../assets/Mountains.png")]
			//[Embed(source="../assets/Darker_Mountains.png")]
			[Embed(source="../assets/Mountains.png")]
			var c:Class;
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width,b.height, true, 0xffffff);
			d.draw(b);
			var g:Sprite = new Sprite();
			g.graphics.beginBitmapFill(d, null, true, true);
			g.graphics.drawRect(0, 0, stage.stageWidth*2, b.height);
			addChild(g);
			g.y = 0;
			//addEventListener(Event.ENTER_FRAME, eFrame);
			
			this.y = 150;
			
		}
		public function MoveUp():void {
			TweenLite.to(this,2,{ 
					x:0,
					y:0,
					ease:Quad.easeInOut,
					delay:0,
					onComplete:NextStep
				} );
		}
		private function NextStep():void {
			this.y = 0;
		}
		public var speed:Number = 2;
		public function UpdateSpeed(num:Number):void {
			speed = num;
			this.x -= speed;
			var tempX:Number = 0;
			if (this.x < -this.width / 2) { tempX = this.x - this.width / 2; this.x = 1200+tempX;  }
			if (this.x > 0) { this.x = -this.width / 2;}
		}
		
	}
	
}