package 
{
	import bg.GroundThing;
	import com.greensock.plugins.SoundTransformPlugin;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.GradientType;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import hudz.TempHud;
	import items.extras.ExtraBird;
	import items.extras.ExtraFly;
	import items.extras.ExtraGrain;
	import items.extras.ExtraLeaves;
	import items.extras.ExtraRabbit;
	import items.GrainTest;
	import items.ItemGetter;
	import mochi.as3.MochiServices;
	import player.GamePad;
	import player.PlayerEating;
	import player.PlayerHeadshaking;
	import player.PlayerMain;
	import player.PlayerRunning;
	import player.PlayerStanding;
	import player.PlayerWalking;
	
	/**
	 * ...
	 * @author E
	 */
	public class Main extends Sprite 
	{
		
		[Embed(source="assets/tunes/Early Morning.mp3")]
		public static var songC:Class;
		public static var songS:Sound = new songC();
		
		[Embed(source = "assets/tunes/pop-SodaBush-7991_hifi.mp3")]
		public static var popC:Class;
		public static var popClck:Sound = new popC();
		
		[Embed(source="assets/tunes/animals037.mp3")]
		public static var neighC:Class;
		public static var neighS:Sound = new neighC();
		
		[Embed(source = "assets/tunes/pony.mp3")]
		public static var ponyC:Class;
		public static var ponyS:Sound = new neighC();
		
		[Embed(source = "assets/tunes/birdchirp.mp3")]
		public static var birdC:Class;
		public static var birdS:Sound = new birdC();
		
		[Embed(source = "assets/tunes/appleremix.mp3")]
		public static var biteC:Class;
		public static var biteS:Sound = new biteC();
		
		private var next:int = 0;
		private var cnt:int = 0;
		private var pivot:int = 0;
		
		private var animal:Sprite = new Sprite();
		private var getter:DeerGetter = new DeerGetter();
		
		public static var finalScore:int = 0;
		
		public var _mochiads_game_id:String = "c76ac38d47cb603d";
		
		public var gh:GameHandler = new GameHandler();
		//private var horse:PlayerMain = new PlayerMain();
		//private var ground:GroundThing = new GroundThing();
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			//neighS.play();
			songS.play(0, 1000);
			
			
	
			MochiServices.connect("c76ac38d47cb603d", root);
			
			//addChild(ground);
			//addChild(horse);
			
			
			//addChild(new PlayAgain());
			
			//addChild(new MainGame());
			
			//var mg:MainGame =   new MainGame();
			//addChild(mg);
			//mg.Start();
			
			//addChild(new GameHandler());
			
			//addChild(new PlayAgain());
			
			addChild(gh);
			
			//addChild(new butt5("SUBMIT"));
			
			//addChild(new PlayAgain());
			
			//addChild(new GroundThing());
			
			//addChild(new PlayAgain());
			
			//addChild(new GroundThing());
			//addChild(new TempHud());
			
			
			addEventListener(Event.ENTER_FRAME, eFrame);
			
			var i:ItemGetter = new ItemGetter();
			//addChild(i);
			var s:Sprite = i.GetSprite("tree");
			//addChild(s);
			//trace(s.width);
			s.x = s.y = 100;
			
			//addChild(new GroundThing());
			
			var t:GrainTest = new GrainTest();
			//addChild(t);
			t.x = stage.stageWidth / 2;
			t.y = stage.stageHeight / 2;
			
			//addChild(getter);
			
			//addChild(new ExtraLeaves());
			
			//addChild(new ExtraGrain());
			//addChild(new ExtraFly());
			//addChild(new ExtraBird());
			//200 to 375
			//addChild(new ExtraRabbit());
			//[Embed(source="assets/extra/leaves/appearing0005.png")]
			//[Embed(source="flying sw0012.png")]
			//[Embed(source = "butterfly gelb fliegt nw0001.png")]
			
		//	[Embed(source="stopped0002.png")]
		/*[Embed(source="assets/outdoorSTUFF/treesix.png")]
			var c:Class;
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x000000);
			d.draw(b);
			var pixelValue:uint = d.getPixel32(4, 4);
			var alphaValue:uint = pixelValue >> 24 & 0xFF;
			var red:uint = pixelValue >> 16 & 0xFF;	
			var green:uint = pixelValue >> 8 & 0xFF;
			var blue:uint = pixelValue & 0xFF;
			//806242
			trace(alphaValue.toString(16)); // ff
			trace(red.toString(16)); // 44
			trace(green.toString(16)); // aa
			trace(blue.toString(16)); // cc */
		}
		private function eFrame(e:Event):void {
			//trace(mouseX + "|" + mouseY);
		}
		
	}
	
}