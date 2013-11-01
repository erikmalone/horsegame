package player
{
	import flash.display.BitmapData;
	import flash.display.ShaderParameter;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	
	/**
	 * ...
	 * @author E
	 */
	public class PlayerMain extends Sprite 
	{
		private var dir:String = new String();
		private var speed:Number = 3;
		private var wait:int = 3;
		private var action:String = new String();
		private var cnt:int = 0;
		private var spot:int = 0;
		
		private var playerRunning:PlayerRunning; //= new PlayerRunning();
		private var playerWalking:PlayerWalking;//= new PlayerWalking();
		private var playerEating:PlayerEating;//= new PlayerEating();
		private var playerShaking:PlayerHeadshaking;//= new PlayerHeadshaking();
		private var playerStanding:PlayerStanding;// = new PlayerStanding();;
		
		private var char:Sprite = new Sprite();
		
		private var vy:Number = 0;
		
		
		
		public function PlayerMain() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			playerRunning = new PlayerRunning(); playerWalking = new PlayerWalking(); playerEating = new PlayerEating();
			playerShaking = new PlayerHeadshaking(); playerStanding = new PlayerStanding();
			addChild(playerRunning); addChild(playerWalking); addChild(playerEating); addChild(playerShaking);
			addChild(playerStanding);
			
			
			
			addChild(char);
			var d:BitmapData = playerStanding.GetData("n", 0);
			char.graphics.beginBitmapFill(d, new Matrix(), false, true);
			char.graphics.drawRect(0, 0, d.width, d.height);
			
			char.mouseEnabled = false;
			char.mouseChildren = false;
			char.x = - char.width/2;
			char.y = -char.height/2-15;
			action = "running";
			dir = "e";
			//addEventListener(Event.ENTER_FRAME, eFrame);
			
		}
		private function eFrame(e:Event):void {
			
			cnt++;
			if (cnt >= wait) {
				cnt = 0;
				if (action != "eating" && spot >= 12) { spot = 0;}
				
				UpdatePlayerGraphics();
				spot++; if (spot >= 12 && action != "eating") { spot = 0; }
						else if (spot >= 14) { spot = 0;}
			}
			
		}
		private function eFrameCall():void {
			cnt++;
			if (cnt >= wait) {
				cnt = 0;
				if (action != "eating" && spot >= 12) { spot = 0;}
				
				UpdatePlayerGraphics();
				spot++; if (spot >= 12 && action != "eating") { spot = 0; }
						else if (spot >= 14) { spot = 0;}
			}
		}
		private function UpdatePlayerGraphics():void{
			var d:BitmapData;
			if (action == "running") { d = playerRunning.GetData(dir, spot); }
			else if (action == "walking") { d = playerWalking.GetData(dir, spot); }
			else if (action == "eating") { d = playerEating.GetData(dir, spot); }
			else if (action == "running") { d = playerShaking.GetData(dir, spot); }
			else if (action == "standing") { d = playerStanding.GetData(dir, 0); }
			else { d = playerStanding.GetData("n",0);}
			char.graphics.clear();
			//char.graphics.lineStyle(5, 0);
			char.graphics.beginBitmapFill(d, new Matrix(), false, true);
			char.graphics.drawRect(0, 0, d.width, d.height);
			
		}
		public function UpdateGraphics(vx:Number, vy:Number):void {
			// determine walk/run/stand
			//determine speed of walk/run/stand
			action = "running";
			
			if (vx < -0.81 || vx > 0.81) { wait = 1;}
			else if ( vx < -0.55 || vx > 0.55) { wait = 2; }
			else if (vx < -0.25 || vx > 0.25) { wait = 3; }
			else { action = "walking"; wait = 4; }
			
			
			if (vy > 0 && vx == 0) { //south}
				dir = "s";
				}
			else if (vy < 0 && vx == 0) { //north
				dir = "n";
			}
			
			else if (vy == 0 && vx < 0) { //west
				dir = "w";
			}
			else if (vy == 0 && vx > 0 ) { //east
				dir = "e";
			}
			else if (vy < 0 && vx < 0 ) { //north west
				dir = "nw";
			}
			else if (vy < 0 && vx > 0 ) { //northeast
				dir = "ne";
			}
			else if (vy > 0 && vx < 0 ) { //southw est
				dir = "sw";
			}
			else if (vy > 0 && vx > 0 ) { //southeast
				dir = "se";
			}
			else {
				action = "standing";
			}
			
			//DO SPEEDS
			
			
			
			eFrameCall();
			
			
		}
		public function SetAction(act:String,_dir:String):void {
			action = act;
			dir = _dir;
			spot = 0;
			cnt = 0;
			if (action == "eating") { wait = 5; }
			else if (action == "running") { wait = 2; }
			else { wait = 3;}
			UpdatePlayerGraphics();
		}
		
		
		
	}
	
}