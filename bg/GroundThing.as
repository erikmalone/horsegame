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
	public class GroundThing extends Sprite 
	{
		private var layer4:Layer4 = new Layer4();
		private var layer3:Layer3 = new Layer3();
		private var layer2:Layer2 = new Layer2();
		private var layer1:Layer1 = new Layer1();
		private var g:Sprite = new Sprite();
		public function GroundThing() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
	
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			//[Embed(source = "../assets/grasstile.png")]
			[Embed(source="../assets/grasstile111.png")]
			var c:Class;
			var b:Bitmap = new c();
			var d:BitmapData = new BitmapData(b.width,b.height, true, 0);
			d.draw(b);
			
			g.graphics.beginBitmapFill(d, null, true, true);
			g.graphics.drawRect(0, 0, b.width*6, 250);
			//addChild(g);
			g.y = stage.stageHeight - g.height;
			
			
			
			addChild(layer4);
			addChild(layer3);
			addChild(layer2);
			addChild(g);
			addChild(layer1); 
			
			layer1.visible = true;
			layer2.visible = true;
			layer3.visible = true;
			layer4.visible = true;
			
			//dispatchEvent(new Event("LayerDone", true));
			addEventListener("LayerDone", NextStep);
			
			//addChild(new GroundThing());
			g.y = 600;
			
			//MoveUp();
			//layer1.MoveUp(); layer2.MoveUp(); layer3.MoveUp(); layer4.MoveUp();
			
			//g.y = stage.stageHeight - g.height;
			
			
		}
		
		public function MoveUp():void {
			/*TweenLite.to(g,2,{ 
					x:0,
					y:stage.stageHeight - g.height,
					ease:Quad.easeInOut,
					delay:0,
					onComplete:NextStep
				} );
				*/
			layer1.MoveUp(); layer2.MoveUp(); layer3.MoveUp(); layer4.MoveUp();
			
			g.y = stage.stageHeight - g.height;
			addEventListener(Event.ENTER_FRAME, eFrame);
		}
		private function NextStep(e:Event):void {
			//this.y = 0;
			g.y = stage.stageHeight - g.height;
			removeEventListener(Event.ENTER_FRAME, eFrame);
			dispatchEvent(new Event("GroundReady", true));
		}
		public var speed:Number = 5;
		public var oldY:Number = 0;
		private function eFrame(e:Event):void {
			//g.x -= speed;
			//if (g.x < -g.width / 2) { g.x = 0;}
			//if (g.x > 0) { g.x = -g.width / 2; }
			//UpdateSpeed(speed);
			
			g.y += layer1.y - oldY;
			oldY = layer1.y;
			//g.y = layer1.y+g.height;
		}
	
		
		public function UpdateSpeed(num:Number):void {
			//num *= 10;
			speed = num;
			//5,3,2,1
			//layer1.speed = num;
			//layer2.speed = num / 3;
			//layer3.speed = num / 4;
			//layer4.speed = num / 5;
			
			layer1.UpdateSpeed(num);
			layer2.UpdateSpeed(num / 3);
			layer3.UpdateSpeed(num / 4);
			layer4.UpdateSpeed(num / 5);
			
			g.x -= speed;
			if (g.x < -g.width / 2) { g.x = 0;}
			if (g.x > 0) { g.x = -g.width/2;}
		}
		
	}
	
}