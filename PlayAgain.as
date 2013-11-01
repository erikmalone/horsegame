package 
{
	import com.greensock.plugins.GlowFilterPlugin;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.filters.BevelFilter;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import mochi.as3.MochiAd;
	import mochi.as3.MochiScores;
	
	/**
	 * ...
	 * @author E
	 */
	public class PlayAgain extends Sprite 
	{
		private var box:Sprite = new Sprite();
		private var playButton:Sprite = new Sprite();
		private var cover:Sprite = new Sprite();
		
		private var firstTime:Boolean = true;
		
		
		private var submitTitle:buttTXT = new buttTXT("100");
		private var submitButton:butt5 = new butt5("SUBMIT");
		
		public function PlayAgain() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			cover.graphics.beginFill(0, 0.2);
			cover.graphics.drawRect(0, 0, stage.stageWidth, stage.stageHeight);
			addChild(cover);
			
			firstTime = true;
			
			
			[Embed(source = "assets/UI/Play.png")]
			var playC:Class;
			var playB:Bitmap = new playC();
			var playD:BitmapData = new BitmapData(playB.width, playB.height, true, 0x00000000);
			playD.draw(playB);
			//trace(playB.width);
			playButton.graphics.beginBitmapFill(playD, new Matrix(), false, true);
			playButton.graphics.drawRect(0, 0, playD.width, playD.height);
			
			
			[Embed(source = "assets/UI/howTEMP.png")]
			var tempC:Class;
			var tempB:Bitmap = new tempC();
			var tempD:BitmapData = new BitmapData(tempB.width, tempB.height, true, 0x00000000);
			tempD.draw(tempB);
			tempD.applyFilter(tempD, new Rectangle(0, 0, tempD.width, tempD.height), new Point(0, 0), new GlowFilter(0xffffff, 1, 6, 6, 2, 1, false, false));
			
			box.graphics.beginFill(0, .5);
			box.graphics.drawRoundRect(0, 0, 400, 300, 25, 25);
			box.graphics.beginBitmapFill(tempD, new Matrix, false, true);
			box.graphics.lineStyle(3, 0, 0.5);
			box.graphics.drawRoundRect(0, 0, 400, 300, 25, 25);
			addChild(box);
			box.addChild(playButton);
			playButton.x =  box.width / 2 - playButton.width / 2+45;
			playButton.y =  box.height - playButton.height - 10;
			
			box.x = stage.stageWidth / 2 - box.width / 2;
			box.y = stage.stageHeight / 2 - box.height / 2;
			
			playButton.addEventListener(MouseEvent.MOUSE_OVER, playOver);
			playButton.addEventListener(MouseEvent.MOUSE_OUT, playOut);
			playButton.addEventListener(MouseEvent.MOUSE_DOWN, playDown);
			playButton.addEventListener(MouseEvent.MOUSE_UP, playUp);
			playButton.addEventListener(MouseEvent.CLICK, playClick);
			
			
			//UpdateBox();
			
			this.x = stage.stageWidth / 2 - this.width / 2;
			this.y = 0;// stage.stageHeight / 2 - this.height / 2;
		}
		private function playOver(e:MouseEvent):void {
			playButton.filters = [new GlowFilter(0xffffff, 0.4, 12, 12, 2, 1, false, false)];
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
			dispatchEvent( new Event("PlayAgainClicked", true));
			this.visible = false;
			UpdateBox();
			Main.popClck.play(); 
			//Reset();
		}
		public function Reset():void {
			playButton.y =  box.height - playButton.height - 10;
			playButton.filters = [];
			submitTitle.Update("" + Main.finalScore);
			this.visible = true;
		}
		private function UpdateBox():void {
			//trace("WTF");
				
			[Embed(source="assets/UI/scoretemp.png")]
			var tempC1:Class;
			var tempB:Bitmap = new tempC1();
			var tempD:BitmapData = new BitmapData(tempB.width, tempB.height, true, 0x00000000);
			tempD.draw(tempB);
			tempD.applyFilter(tempD, new Rectangle(0, 0, tempD.width, tempD.height), new Point(0, 0), new GlowFilter(0xffffff, 1, 2, 2, 4, 4, false, false));
			box.graphics.clear();
			box.graphics.beginFill(0, .5);
			box.graphics.drawRoundRect(0, 0, 400, 300, 25, 25);
			box.graphics.beginBitmapFill(tempD, new Matrix, false, true);
			box.graphics.lineStyle(3, 0, 0.5);
			box.graphics.drawRoundRect(0, 0, 400, 300, 25, 25);
			addChild(box);
			box.addChild(playButton);
			playButton.x = box.x + box.width - playButton.width;
			playButton.y =  box.height - playButton.width - 10;
			
			box.x = stage.stageWidth / 2 - box.width / 2;
			box.y = stage.stageHeight / 2 - box.height / 2;
			
			
			addChild(submitButton);
			addChild(submitTitle);
			
			submitButton.addEventListener(MouseEvent.CLICK, submitClick);
			
			submitTitle.x = box.x + box.width / 2 - submitTitle.width/2
			submitTitle.y = box.y + box.height / 2 - submitTitle.height / 2;
			submitButton.x = box.x + 70;
			submitButton.y = box.y + box.height - submitButton.height - 25;
			
			playButton.x =  box.width / 2 - playButton.width / 2+45;
			playButton.y = box.y + box.height - playButton.height*2+30;
			
			//submitTitle
				box.x = stage.stageWidth / 2 - box.width / 2;
			box.y = stage.stageHeight / 2 - box.height / 2;
			
			//import mochi.as3.*;
			
			var clickaway:MovieClip = new MovieClip();
			clickaway.graphics.lineStyle(0xffffff);
			clickaway.graphics.drawRect(0,0,300,250);
			//addChild(clickaway);
			clickaway.x = box.x + box.width - clickaway.width;
			clickaway.y = box.y;
			//MochiAd.showClickAwayAd({clip:clickaway, id:"c76ac38d47cb603d"});
			
			
			//import mochi.as3.*;
			// This clip must be above all other game assets in the display list and must be positioned at screen coordinate (0,0)
				var clip:MovieClip = new MovieClip();
				addChild(clip);
				var game_id:String = "c76ac38d47cb603d";
				MochiAd.loadShowcase({
				clip:clip,
				id:game_id,
				position:"0x0", // This represents an X, Y offset from the center.
			ad_count:5, // The number of ads to display in the showcase. (Choose a lower number for small games)
			ad_size:90, // Force dimensions for all Ads displayed.
			user_close:true, // Allow the use to close the Showcase ad.
			ad_loaded: function(w:int, h:int):void { }, // A callback that occurs when ad is first displayed.
			ad_closed: function():void {} // A callback that occurs when user closes Showcase.
			}); 
			
		}
		private function submitClick(e:MouseEvent):void {
			var o:Object = { n: [12, 0, 3, 10, 4, 11, 10, 6, 3, 14, 15, 6, 3, 9, 5, 6], f: function (i:Number,s:String):String { if (s.length == 16) return s; return this.f(i+1,s + this.n[i].toString(16));}};
var boardID:String = o.f(0,"");
MochiScores.showLeaderboard({boardID: boardID, score: Main.finalScore});
		}
		
		
		
		
	}
	
}