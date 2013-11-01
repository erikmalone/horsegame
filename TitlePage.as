package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.BevelFilter;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author E
	 */
	public class TitlePage extends Sprite 
	{
		private var playButton:Sprite = new Sprite();
		
		public function TitlePage() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			[Embed(source = "assets/UI/Credit.png")]
			var creditC:Class;
			var creditB:Bitmap = new creditC();
			var creditD:BitmapData = new BitmapData(creditB.width, creditB.height, true, 0x00000000);
			creditD.draw(creditB);
			var creditS:Sprite = new Sprite();
			creditS.graphics.beginBitmapFill(creditD, new Matrix, false, true);
			creditS.graphics.drawRect(0, 0, creditD.width, creditD.height);
			addChild(creditS);
			creditS.y = stage.stageHeight - creditS.height;
			
			[Embed(source = "assets/UI/Horse-y.png")]
			var horseC:Class;
			var horseB:Bitmap = new horseC();
			var horseD:BitmapData = new BitmapData(horseB.width, horseB.height, true, 0x00000000);
			horseD.draw(horseB);
			var horseS:Sprite = new Sprite();
			horseS.graphics.beginBitmapFill(horseD, new Matrix, false, true);
			horseS.graphics.drawRect(0, 0, horseD.width, horseD.height);
			addChild(horseS);
			horseS.y = 10;
			horseS.x = stage.stageWidth / 2 - horseS.width / 2;
			
			creditS.y = horseS.y + horseS.height / 2;
			creditS.x = horseS.x;
			
			[Embed(source = "assets/UI/Play.png")]
			var playC:Class;
			var playB:Bitmap = new playC();
			var playD:BitmapData = new BitmapData(playB.width, playB.height, true, 0x00000000);
			playD.draw(playB);
			//trace(playB.width);
			playButton.graphics.beginBitmapFill(playD, new Matrix(), false, true);
			playButton.graphics.drawRect(0, 0, playD.width, playD.height);
			
			
			addChild(playButton);
			playButton.x = stage.stageWidth / 2 - playButton.width / 2;
			playButton.y = stage.stageHeight / 2 - playButton.height / 2;
			
			playButton.addEventListener(MouseEvent.MOUSE_OVER, playOver);
			playButton.addEventListener(MouseEvent.MOUSE_OUT, playOut);
			playButton.addEventListener(MouseEvent.MOUSE_DOWN, playDown);
			playButton.addEventListener(MouseEvent.MOUSE_UP, playUp);
			playButton.addEventListener(MouseEvent.CLICK, playClick);
		}
		private function playOver(e:MouseEvent):void {
			playButton.filters = [new GlowFilter(0, 0.2, 6, 6, 2, 1, false, false)];
		}
		private function playOut(e:MouseEvent):void {
			playButton.filters = [];
		}
		private function playDown(e:MouseEvent):void {
			playButton.filters = [new BevelFilter(4, 90, 0, 0, 0, 1)];
			playButton.y += 3;
		}
		private function playUp(e:MouseEvent):void {
			playButton.filters = [new GlowFilter(0, 0.2, 6, 6, 2, 1, false, false)];
			playButton.y -= 3;
		}
		private function playClick(e:MouseEvent):void {
			//dispatchEvent( new Event("PlayAgainClicked", true));
			dispatchEvent(new Event("GroundStart", true));
			this.visible = false;
			Main.popClck.play(); 
			//Reset();
		}
		
	}
	
}