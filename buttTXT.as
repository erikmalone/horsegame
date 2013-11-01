package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.filters.BlurFilter;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author E
	 */
	public class buttTXT extends Sprite 
	{
		[Embed(source = "assets/SHOWG.TTF", embedAsCFF = "false", fontName = "Gothic", mimeType = "application/x-font")]
		public var Gothic:Class;
		
		public var con:MovieClip = new MovieClip();
		
		private var str:String = new String();
		private var txt:TextField = new TextField();
		public function buttTXT(_str:String) { str = _str;
			if (stage) init();
				else addEventListener(Event.ADDED_TO_STAGE, init);
				
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			showContinue();
		}
		private function showContinue():void {
			
			var matrix:Matrix = new Matrix();
			matrix.createGradientBox(40,5,0,0,0);
			con.graphics.beginGradientFill("linear", new Array(921102,0x00ff00),new Array(0.2,0.2),new Array(0,255),matrix,"reflect","linear_rgb",0);
			con.graphics.drawRoundRect(0, 0,80,30,15,15);
			addChild(con);
			//con.x = stage.stageWidth / 2 - con.width / 2;
			//con.y = bar.y + bar.height + 25;
			
			con.buttonMode = false;
			
			
			txt.autoSize = TextFieldAutoSize.LEFT;
			var tf:TextFormat = new TextFormat();
			tf.align = TextFormatAlign.CENTER;
			tf.size = 32;
			
			tf.color = 0xffffff;
			txt.defaultTextFormat = tf;
			txt.text = "" + str;
			txt.x =  con.width / 2 - txt.width / 2;
			txt.y =  con.height / 2 - txt.height / 2;
			con.addChild(txt);
			txt.mouseEnabled = false;
			txt.filters = [new GlowFilter(0, 1, 4, 4, 2, 1, false, false)];
			
			this.scaleX = 1.5;
			this.scaleY = 1.5;
			
			//con.addEventListener(MouseEvent.MOUSE_OVER, conOver);
			//con.addEventListener(MouseEvent.MOUSE_OUT, conOut);
			//con.addEventListener(MouseEvent.CLICK, conClick);
		}
		public function Update(_str:String):void {
			txt.text = "" + _str;
			txt.x =  con.width / 2 - txt.width / 2;
			txt.y =  con.height / 2 - txt.height / 2;
		}
		private function conOver(e:MouseEvent):void {
			con.filters = [new BlurFilter(2, 2, 1)];
		}
		
		private function conOut(e:MouseEvent):void 
		{
			con.filters = [];
		}
		private function conClick(e:MouseEvent):void {
			//this.parent.dispatchEvent(new Event("splashDone"));
			//this.visible = false;
		}
		
	}
	
}