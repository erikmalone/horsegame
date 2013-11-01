package player
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author E
	 */
	public class GamePad extends Sprite 
	{
		public var s:Sprite = new Sprite();
		private var size:int = 60;
		
		public var action:String = new String();
		
		public var dir:String = "n";
		
		private var clrRun:uint = 0x00ff00;
		private var clrWalk:uint = 0x0000ff;
		private var clrEat:uint = 0xff3030;
		private var clrStand:uint = 0;
		
		private var alphaHide:Number = 0.2;
		private var alphaShow:Number = 0.4;
		private var alphaRun:Number = 0;
		private var alphaWalk:Number = 0;
		private var alphaEat:Number = 0;
		private var alphaStand:Number = 0;
		
		public function GamePad() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			//this.alpha = 0;
			s.graphics.lineStyle(2, 0xffffff);
			s.graphics.beginFill(clrRun);
			s.graphics.drawCircle(0, 0, size*4);
			s.graphics.beginFill(clrWalk);
			s.graphics.drawCircle(0, 0, size*3);
			s.graphics.beginFill(clrEat);
			s.graphics.drawCircle(0, 0, size*2);
			
			s.graphics.beginFill(clrStand);
			s.graphics.drawCircle(0, 0, size);
			
			
			
			
			
			
			//s.x = stage.stageWidth - s.width / 2;
			//s.y = stage.stageHeight - s.height / 2;
			
			//s.x = stage.stageWidth / 2 - 125;
			//s.y = stage.stageHeight / 2;
			
			addChild(s);
			
			addEventListener(Event.ENTER_FRAME, eFrame);
			
		}
		private function eFrame(e:Event):void {
			//new Float:angle = atan2(x1 - x2, y1 - y2);
			var diffX:Number = s.x - mouseX;
			var diffY:Number = s.y - mouseY;
			var c:Number = Math.sqrt(diffX * diffX + diffY * diffY);
			
			
			var ang:Number = Math.atan2(s.x - mouseX, s.y - mouseY);
			ang = ang * (180 / Math.PI);
			
			var dist:Number = c;
			
			if (ang < 0) { ang = 360 + ang;}
			//trace( dist + "|" + ang);
			
			if (dist > size * 4) { 
				if (action != "standing") { action = "standing"; NewAction();} GetAngle(ang);  }
			
			else if (dist > size * 3) {  
				if (action != "running") {action = "running"; NewAction(); }GetAngle(ang); }
					
			else if (dist > size * 2 ) { 
				if (action != "walking") { action = "walking"; NewAction();} GetAngle(ang); }
			
			else if (dist > size) {  
				if (action != "eating") { action = "eating"; NewAction();} GetAngle(ang); }
			
			else if (dist <= size) {
				if (action != "standing") { action = "standing"; NewAction();} GetAngle(ang); }
			
			if (this.alpha > 0) {
				this.alpha -= 0.01;
			}
			
		}
		private function GetAngle(ang:Number):void {
			
			if (ang < 22.5 || ang > 337.5) { dir = "n"; }
			else if (ang >= 22.5 && ang < 67.5) { dir = "nw"; }
			else if (ang >= 67.5 && ang < 112.5) { dir = "w"; }
			else if (ang >= 112.5 && ang < 157.5) { dir = "sw"; }
			else if (ang >= 157.5 && ang < 202.5) { dir = "s"; }
			else if (ang >= 202.5 && ang < 247.5) { dir = "se"; }
			else if (ang >= 247.5 && ang < 292.5) { dir = "e"; }
			else if (ang >= 292.5 && ang <= 337.5) { dir = "ne";}
			
		}
		private function NewAction():void {
			var ls:int = 2;
			var alphaLine:Number = 0.3;
			alphaHide = 0.1;
			
			alphaShow = 0.3;
			alphaRun = alphaWalk = alphaEat = alphaStand = alphaHide;
			
		
			if (action == "running") { alphaRun = alphaShow; }
			else if (action == "walking") { alphaWalk = alphaShow; }
			else if (action == "eating") { alphaEat = alphaShow; }
			else if (action == "standing") { alphaStand = alphaShow; }
			
			
			s.graphics.clear();
			
			s.graphics.lineStyle(ls, clrRun, alphaLine);
			s.graphics.beginFill(clrRun,alphaRun);
			s.graphics.drawCircle(0, 0, size * 4);
			
			s.graphics.lineStyle(ls, clrWalk, alphaLine);
			s.graphics.beginFill(clrWalk,alphaWalk);
			s.graphics.drawCircle(0, 0, size * 3);
			
			s.graphics.lineStyle(ls, clrEat, alphaLine);
			s.graphics.beginFill(clrEat,alphaEat);
			s.graphics.drawCircle(0, 0, size * 2);
			
			s.graphics.lineStyle(ls, clrStand, alphaLine);
			s.graphics.beginFill(clrStand,alphaStand);
			s.graphics.drawCircle(0, 0, size);
			
		}
		public function QuickShow():void {
			this.alpha = 1;
		}
		
		
		
	}
	
}