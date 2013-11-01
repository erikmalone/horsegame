package items
{
	import com.greensock.easing.Back;
	import com.greensock.easing.Bounce;
	import com.greensock.easing.Quart;
	import com.greensock.TweenLite;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author E
	 */
	public class ItemTemp extends Sprite 
	{
		private var d:BitmapData;
		private var s:Sprite = new Sprite();
		public function ItemTemp(_d:BitmapData) {
			d = _d;
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var temp:Sprite = new Sprite();
			temp.graphics.beginBitmapFill(d, null, true, true);
			temp.graphics.drawRect(0, 0, d.width, d.height);
			addChild(s); s.addChild(temp);
			temp.x = -temp.width / 2; temp.y = -temp.height / 2;
			
		}
		public function spin():void {
			TweenLite.to(this,1,{ 
					x:0,
					y:0,
					ease:Bounce.easeIn,
					delay:0,
					onComplete:NextStep, 
					rotation:720,
					alpha:0
				} );
			
			Main.biteS.play();
			
			//addEventListener(Event.ENTER_FRAME, eFrame);
		}
		private function NextStep():void {
			if(this.stage){
			this.parent.removeChild(this);}
		}
		private function eFrame(e:Event):void {
			s.rotation += 10;
			
		}
		
		
	}
	
}