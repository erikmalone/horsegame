package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.system.System;
	
	/**
	 * ...
	 * @author E
	 */
	public class DeerGetter extends Sprite 
	{
		private var runningeA:Array = new Array();
		public var RunEastData:Array = new Array();
		
		
		
		public function DeerGetter() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			
			var fileName:String = new String();
			var className:String = new String();
			var bitName:String = new String();
			
			//[Embed(source="assets/extra/rabbit/walking e0000.png")]
			[Embed(source="assets/horse/running e0000.png")]
			var runningEC:Class; 
			//var runningEb:Bitmap = new lookinge0();
			//a.push(lookinge0b);
			fileName = "looking e0000";
			//var lineOne:String = "[Embed(source=\"assets/horse/" + fileName + ".png\")]\n";
			
			var title:String = new String("flying");
			var eTitle:String = new String("flying");
			var arrayTitle:String = new String("Flying");
			var arrayDir:String = new String("");
			var arrayName:String = new String("");
			var dir:String = new String("e");
			var num:int = 16;
			var str:String = new String();
			var a:Array = new Array();
			var quickie:Boolean = false;
			for (var i:int = 0; i < num; i++) {
				if(quickie==false){
					for (var j:int = 0; j < 8;j++){
					if (j == 0) { dir = "e"; arrayDir = "East"; }
					if (j == 1) { dir = "se"; arrayDir = "SouthEast"; }
					if (j == 2) { dir = "s"; arrayDir = "South"; }
					if (j == 3) { dir = "sw"; arrayDir = "SouthWest"; }
					if (j == 4) { dir = "w"; arrayDir = "West"; }
					if (j == 5) { dir = "nw"; arrayDir = "NorthWest"; }
					if (j == 6) { dir = "n"; arrayDir = "North"; }
					if (j == 7) { dir = "ne"; arrayDir = "NorthEast"; }
					arrayName = arrayTitle + arrayDir;
					if (i < 10) {
						fileName = title+" "+dir+"000" + i;
					}
					else { fileName = title+" "+dir+"00" + i;}
				
					var lineOne:String = "[Embed(source=\"../../assets/extra/crow/" + fileName + ".png\")]\n";
					var lineTwo:String = "var " + title + "C" + dir+i + ":Class;\n";
					var lineThree:String = "var " + title +"B" + dir+i +":Bitmap = new " + title + "C" +dir+ i + "();\n";
					var linePUSH:String = arrayName+".push(GetBMPData(" + title + "B"+dir+ + i + "));\n";
					str = str + lineOne + lineTwo + lineThree + linePUSH;
					
					
					}
				
				}
				
				else if (quickie == true) {
					dir = "";
					arrayName = arrayTitle + "Array";// + arrayDir;
					if (i < 10) {
						fileName = eTitle+""+dir+"000" + i;
					}
					else { fileName = eTitle+""+dir+"00" + i;}
				
					var lineOne1:String = "[Embed(source=\"../../assets/extra/grain/" + fileName + ".png\")]\n";
					var lineTwo2:String = "var " + title + "C" + dir+i + ":Class;\n";
					var lineThree3:String = "var " + title +"B" + dir+i +":Bitmap = new " + title + "C" +dir+ i + "();\n";
					var linePUSH4:String = arrayName+".push(GetBMPData(" + title + "B"+dir+ + i + "));\n";
					str = str + lineOne1 + lineTwo2 + lineThree3 + linePUSH4;
				}
			}
			System.setClipboard(str);
			
			
			//var lineTwo:String = "var " + title + num";
					
			//HaHa();
			//HeHe();
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		private function HaHa():void {
		
			
			for (var i:int = 0; i < runningeA.length; i++) {
				var b:Bitmap = runningeA[i];
				var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
				d.draw(b);
				//var clr:uint = d.getPixel(1, 1);
				//d.threshold(d, new Rectangle(0, 0, d.width, d.height), new Point(0, 0), "==", clr, 0x00000000, 0x00ff0000, true);
				RunEastData.push(d);
			}
			
		}
		private function HeHe():void {
			[Embed(source="assets/horse/running e0000.png")]

var runningC0:Class;

var runningB0:Bitmap = new runningC0();

runningeA.push(runningB0);

[Embed(source="assets/horse/running e0001.png")]

var runningC1:Class;

var runningB1:Bitmap = new runningC1();

runningeA.push(runningB1);

[Embed(source="assets/horse/running e0002.png")]

var runningC2:Class;

var runningB2:Bitmap = new runningC2();

runningeA.push(runningB2);

[Embed(source="assets/horse/running e0003.png")]

var runningC3:Class;

var runningB3:Bitmap = new runningC3();

runningeA.push(runningB3);

[Embed(source="assets/horse/running e0004.png")]

var runningC4:Class;

var runningB4:Bitmap = new runningC4();

runningeA.push(runningB4);

[Embed(source="assets/horse/running e0005.png")]

var runningC5:Class;

var runningB5:Bitmap = new runningC5();

runningeA.push(runningB5);

[Embed(source="assets/horse/running e0006.png")]

var runningC6:Class;

var runningB6:Bitmap = new runningC6();

runningeA.push(runningB6);

[Embed(source="assets/horse/running e0007.png")]

var runningC7:Class;

var runningB7:Bitmap = new runningC7();

runningeA.push(runningB7);

[Embed(source="assets/horse/running e0008.png")]

var runningC8:Class;

var runningB8:Bitmap = new runningC8();

runningeA.push(runningB8);

[Embed(source="assets/horse/running e0009.png")]

var runningC9:Class;

var runningB9:Bitmap = new runningC9();

runningeA.push(runningB9);

[Embed(source="assets/horse/running e0010.png")]

var runningC10:Class;

var runningB10:Bitmap = new runningC10();

runningeA.push(runningB10);

[Embed(source="assets/horse/running e0011.png")]

var runningC11:Class;

var runningB11:Bitmap = new runningC11();

runningeA.push(runningB11);
		}
		
	}
	
}