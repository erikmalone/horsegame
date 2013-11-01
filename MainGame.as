package 
{
	import bg.GroundThing;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.ShaderPrecision;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import items.ItemGetter;
	import items.ItemTemp;
	import nape.callbacks.CbEvent;
	import nape.callbacks.CbType;
	import nape.callbacks.InteractionCallback;
	import nape.callbacks.InteractionListener;
	import nape.callbacks.InteractionType;
	import nape.dynamics.InteractionFilter;
	import nape.geom.Mat23;
	import nape.geom.Vec2;
	import nape.phys.Body;
	import nape.phys.BodyList;
	import nape.phys.BodyType;
	import nape.phys.Material;
	import nape.shape.Circle;
	import nape.shape.Polygon;
	import nape.space.Space;
	import nape.util.BitmapDebug;
	import nape.util.Debug;
	import player.PlayerMain;
	import zpp_nape.util.ZNPNode_ZPP_InteractionListener;
	import flash.events.KeyboardEvent;
	
	/**
	 * ...
	 * @author E
	 */
	public class MainGame extends Sprite 
	{
		private var space:Space;
		//private var debug:Debug;
		private var body:Body;
		private var ceiling:Body;
		private var floor:Body;
		private var bodyCB:CbType;
		private var tempVX:Number=0;
		private var mouseDiff:Number=0;
		private var vx:Number = 0;
		private var vy:Number = 0;
		private var change:Number = 0;
		private var bodyVY:Number = 100;
		private var bodyVX:Number = 0;
		private var floorY:Number = 0;
		private var ceilingY:Number = 0;
		private var bodyList:BodyList;
		private var camera:Point = new Point();
		private var oldPosition:Number = 0;
		private var itemGetter:ItemGetter = new ItemGetter();
		public var extras:ExtraItems = new ExtraItems();
		
		private var tempCon:Sprite = new Sprite();
		
		private var tempPause:Boolean = true;
		
		private var currentLength:Number = 0;
		
	public var ground:GroundThing = new GroundThing();
	public var horse:PlayerMain = new PlayerMain();
		
		//private var horse:Sprite = new Sprite();
		//private var ground:Sprite = new Sprite();
		
		private var upDown:Boolean = false;
		private var downDown:Boolean = false;
		private var delayOn:Boolean = false;
		
		public function MainGame() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point	
			space = new Space(null);
			//debug = new BitmapDebug(stage.stageWidth, stage.stageHeight, 0xffffffff);
			//debug.drawConstraints = true;
			
			//addChild(debug.display);
			floorY = stage.stageHeight - 25;
			ceilingY = stage.stageHeight / 2 - 75;
			
			addChild(ground);
			
			//addChild(debug.display);
			addChild(itemGetter);
			addChild(tempCon);
			addChild(extras);
			addChild(horse);
			
			SetUp();
			stage.addEventListener(KeyboardEvent.KEY_DOWN, kDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, kUp);
			addEventListener(Event.ENTER_FRAME, eFrame);
			
				//addChild(debug.display);
		}
		private function kDown(e:KeyboardEvent):void {
			var kc:int = e.keyCode;
			if (kc == 38 || kc == 87 || kc == 65 || kc == 75) {upDown = true;downDown = false;}
			else if (kc == 40 || kc == 83 || kc == 77 || kc == 90) {upDown = false;downDown = true;}
			 if (e.keyCode == 82) { TempQuit();}
		}
		private function kUp(e:KeyboardEvent):void {
			//Up, w, a, k ---   38, 87, 65, 75****Down, s, z, m --- 40, 83, 77, 90
			var kc:int = e.keyCode;
			if (kc == 38 || kc == 87 || kc == 65 || kc == 75) {upDown = false;}
			else if (kc == 40 || kc == 83 || kc == 77 || kc == 90) {downDown = false;}
		}
		private function SetUp():void {
			body= new Body(BodyType.DYNAMIC);
			body.shapes.add(new Polygon(Polygon.rect(-45, -25, 90, 40),new Material(0,0,0,1,0)));
			body.space = space;
			body.position.setxy(stage.stageWidth / 2, stage.stageHeight / 2);
			body.allowRotation = false;
			
			
			horse.x = body.position.x; horse.y = body.position.y;
			//horse.x = 100;
			//horse.y = 200;
			horse.SetAction("eating", "e");
			
			ceiling = new Body(BodyType.KINEMATIC);
			ceiling.shapes.add(new Polygon(Polygon.rect(0, -50, stage.stageWidth, 50)));
			ceiling.position.setxy(0, ceilingY);
			ceiling.space = space;
			
			floor = new Body(BodyType.KINEMATIC);
			floor.shapes.add(new Polygon(Polygon.rect(0, 0, stage.stageWidth, 5)));
			floor.position.setxy(0, stage.stageHeight - 5);
			floor.space = space;
			
			bodyCB = new CbType();
			body.cbTypes.add(bodyCB);
			
			bodyList = new BodyList();
			currentLength = 750;
			CreateField();
		}
		private function CreateField():void {
			
			if (body.position.x > currentLength - 1000) {
				dispatchEvent(new Event("DistanceUpdate",true));
				for (var i:int = 0; i < 10; i++) {
					var rand:int = Math.floor(Math.random() * 10);
					if (rand <= 2) {
						MakeItem(currentLength+ i * 250, 215 + Math.random() * 170);
					}
					else if (rand <= 5) {
						MakeDelayer(currentLength+i * 250,230+Math.random()*144);
					}
					else {
						MakeObstacle(currentLength+i * 250,230+Math.random()*144);
					}
					
				}
				
				currentLength = currentLength+2500;
			}
		}
		private function MakeItem(posX:int, posY:int):void {
			var s:Sprite = itemGetter.GetSprite("apple");
			tempCon.addChild(s);
			var block:Body = new Body(BodyType.KINEMATIC);
			var circ:Circle = new Circle(s.width / 2);
			circ.sensorEnabled = true;
			block.shapes.add(circ);
			block.position.setxy(stage.stageWidth/1.5+posX, posY);
			block.space = space;
			var itemCB:CbType = new CbType();
			block.cbTypes.add(itemCB);
			var itemListener:InteractionListener = new InteractionListener(CbEvent.BEGIN, InteractionType.SENSOR, bodyCB, itemCB, ItemSensor);
			space.listeners.add(itemListener);
			block.userData.type = "BLOCK";
			block.userData.pickedup = false;
			block.userData.graphic = s;
			bodyList.add(block);
			s.visible = false;
			
		}
		private function MakeObstacle(posX:int, posY:int):void {
			//HOLY SHIZZLE =)
			var s:Sprite = itemGetter.GetSprite("tree");
			tempCon.addChild(s); 
			var block:Body = new Body(BodyType.KINEMATIC);
			var circ:Circle = new Circle(s.width / 5,new Vec2(0,7));
			block.shapes.add(circ);
			block.position.setxy(stage.stageWidth/1.5+posX, posY);
			block.space = space;
			block.userData.type = "BLOCK";
			block.userData.graphic = s;
			bodyList.add(block);
			s.visible = false;
		}
		private function MakeDelayer(posX:int, posY:int):void {
			var s:Sprite;
			var block:Body = new Body(BodyType.KINEMATIC);
			if (Math.random() < 0.2) {
				s = itemGetter.GetSprite("leaves");
				var circ:Circle = new Circle(13);
				circ.sensorEnabled = true;
				block.shapes.add(circ);
			}
			else {
				s = itemGetter.GetSprite("grain");
				var rect:Polygon = new Polygon(Polygon.rect(-s.height/2, -s.height/2, s.height-30, s.height-30));
				rect.sensorEnabled = true;
				block.shapes.add(rect);
				block.rotation = 3.14 / 4;
			}
			block.position.setxy(stage.stageWidth/1.5+posX, posY);
			block.space = space;
			tempCon.addChild(s);
			var itemCB:CbType = new CbType();
			block.cbTypes.add(itemCB);
			var delBeginListener:InteractionListener = new InteractionListener(CbEvent.BEGIN, InteractionType.SENSOR, bodyCB, itemCB, DelayBeginSensor);
			var delEndListener:InteractionListener = new InteractionListener(CbEvent.END, InteractionType.SENSOR, bodyCB, itemCB, DelayEndSensor);
			space.listeners.add(delBeginListener);
			space.listeners.add(delEndListener);
			block.userData.type = "BLOCK";
			block.userData.graphic = s;
			bodyList.add(block);
			s.visible = false;
		}
		
		
		
		private function eFrame(e:Event):void {
			if(tempPause==false){
			space.step(1 / stage.frameRate);
			camera.x = body.position.x - stage.stageWidth / 4;
			for (var i:int = 0; i < space.bodies.length; i++) {
				var b:Body = space.bodies.at(i);
				if (b.userData.type == "BLOCK") {
					var s:Sprite = b.userData.graphic;
					s.x = b.position.x - camera.x;
					s.y = b.position.y - camera.y;
					s.visible = true;
				}
			}
			UpdateShit();
			CreateField();
			
			}
			extras.UpdateVX(tempVX);
			
			//debug.transform = Mat23.translation( -camera.x,0);
			//debug.clear();
			//debug.draw(space);
			//debug.flush();
		}
		private function UpdateShit():void {
		
			tempVX = body.velocity.x/500;
			mouseDiff = mouseX / stage.stageWidth;
			vx = mouseDiff-0.25;
			if (vx > -0.1 && vx < 0.1) { vx = 0; }  
			if (delayOn == true) { vx *= 0.4; }
			if ( vx < -0.85 || vx > 0.85) { bodyVY = 400; }
			else if (vx < -0.55 || vx > 0.5) { bodyVY = 300; }
			else if (vx < -0.35 || vx > 0.35) { bodyVY = 200;}
			else if (vx < -0.25 || vx > 0.25) { bodyVY = 150; }
			else { bodyVY = 100; }
			if (upDown == true || downDown == true) {
				if (upDown == true && body.position.y < 200) {body.velocity.y = vy = 0;}
				else if (downDown == true && body.position.y > 390) {body.velocity.y = vy = 0;}
				else if (upDown == true) {body.velocity.y = vy = -bodyVY;}
				else if (downDown == true) {body.velocity.y = vy = bodyVY;}
			}
			else { body.velocity.y = vy = 0;}
			
			if ((vy == 0 && vx < 0) || (vy == 0 && vx > 0 )) { body.rotation = 0;}
			else if ((vy > 0 && vx == 0) || (vy <0 && vx ==0)) { body.rotation = Math.PI / 2;}
			else if ((vy < 0 && vx < 0 )||(vy > 0 && vx > 0 ) ) { body.rotation = Math.PI / 4;}
			else if ((vy < 0 && vx > 0) || (vy > 0 && vx < 0 )) { body.rotation = Math.PI / 1.33;}
			
			change = body.position.x-oldPosition;
			oldPosition = body.position.x;
			tempVX = change;
			
			if (body.rotation == 0) {vx *= 1.17;}
			
			horse.UpdateGraphics(body.velocity.x/600, vy);
			ground.UpdateSpeed(tempVX);
			
			body.velocity.x = vx * 600;
			
			horse.x = body.position.x-camera.x;
			horse.y = body.position.y;
			floor.position.x = ceiling.position.x = body.position.x - stage.stageWidth / 2;
			
			//horse.UpdateGraphics(body.velocity.x/600, vy);
			//extras.UpdateVX(tempVX);
		}
		
		private function ItemSensor(inter:InteractionCallback):void {
			var cb:CbType = inter.int2.cbTypes.at(0);
			var b:Body = inter.int2.castBody;
			var a:ItemTemp = b.userData.graphic;
			a.spin();
			dispatchEvent(new Event("AppleCollected", true));
			space.listeners.remove(inter.listener);
		}
		private function DelayBeginSensor(inter:InteractionCallback):void {delayOn = true;}
		private function DelayEndSensor(inter:InteractionCallback):void { delayOn = false; }
		public function TimeUp():void {
			//removeEventListener(Event.ENTER_FRAME, eFrame);
			tempPause = true;
			horse.SetAction("standing", "e");
		}
		private function TempQuit():void {
			dispatchEvent(new Event("TimeUp", true));
		}
		public function Start():void {
			//addEventListener(Event.ENTER_FRAME, eFrame);
			tempPause = false;
			Reset();
			
		}
		private function Reset():void {
			space.clear();
			bodyList.clear();
			bodyList = new BodyList();
				while (tempCon.numChildren > 0) {
					tempCon.removeChildAt(0);
				}
		bodyVX = 0;bodyVY = 100;change = 0;vx = vy = 0;
		mouseDiff = tempVX = 0;camera = new Point();
		oldPosition = 0;  currentLength = 0; upDown = downDown = delayOn = false;
		//horse = new PlayerMain();
		//tempCon = new Sprite();
		addChild(tempCon);
		addChild(extras);
		addChild(horse);
		
		//trace(this.numChildren);
	
		//addChild(horse);
		//if(tempCon.numChildren==0){
		SetUp();
		 
		}
		
	}
	
}