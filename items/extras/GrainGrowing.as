package items.extras
{
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	
	
	
	/**
	 * ...
	 * @author E
	 */
	public class GrainGrowing extends Sprite 
	{
		private var GrowingArray:Array = new Array();
		public function GrainGrowing() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			CreateData();
		
			
		}
		public function GetData(dir:String, num:int):BitmapData {
			var d:BitmapData;
			
			d = GrowingArray[num];
			
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
	
		
		private function CreateData():void {
	[Embed(source="../../assets/extra/grain/growing grain 0001.png")]
var growinggrainC0:Class;
var growinggrainB0:Bitmap = new growinggrainC0();
GrowingArray.push(GetBMPData(growinggrainB0));
[Embed(source="../../assets/extra/grain/growing grain 0001.png")]
var growinggrainC1:Class;
var growinggrainB1:Bitmap = new growinggrainC1();
GrowingArray.push(GetBMPData(growinggrainB1));
[Embed(source="../../assets/extra/grain/growing grain 0002.png")]
var growinggrainC2:Class;
var growinggrainB2:Bitmap = new growinggrainC2();
GrowingArray.push(GetBMPData(growinggrainB2));
[Embed(source="../../assets/extra/grain/growing grain 0003.png")]
var growinggrainC3:Class;
var growinggrainB3:Bitmap = new growinggrainC3();
GrowingArray.push(GetBMPData(growinggrainB3));
[Embed(source="../../assets/extra/grain/growing grain 0004.png")]
var growinggrainC4:Class;
var growinggrainB4:Bitmap = new growinggrainC4();
GrowingArray.push(GetBMPData(growinggrainB4));
[Embed(source="../../assets/extra/grain/growing grain 0005.png")]
var growinggrainC5:Class;
var growinggrainB5:Bitmap = new growinggrainC5();
GrowingArray.push(GetBMPData(growinggrainB5));
[Embed(source="../../assets/extra/grain/growing grain 0006.png")]
var growinggrainC6:Class;
var growinggrainB6:Bitmap = new growinggrainC6();
GrowingArray.push(GetBMPData(growinggrainB6));
[Embed(source="../../assets/extra/grain/growing grain 0007.png")]
var growinggrainC7:Class;
var growinggrainB7:Bitmap = new growinggrainC7();
GrowingArray.push(GetBMPData(growinggrainB7));
[Embed(source="../../assets/extra/grain/growing grain 0008.png")]
var growinggrainC8:Class;
var growinggrainB8:Bitmap = new growinggrainC8();
GrowingArray.push(GetBMPData(growinggrainB8));
[Embed(source="../../assets/extra/grain/growing grain 0009.png")]
var growinggrainC9:Class;
var growinggrainB9:Bitmap = new growinggrainC9();
GrowingArray.push(GetBMPData(growinggrainB9));
[Embed(source="../../assets/extra/grain/growing grain 0010.png")]
var growinggrainC10:Class;
var growinggrainB10:Bitmap = new growinggrainC10();
GrowingArray.push(GetBMPData(growinggrainB10));
[Embed(source="../../assets/extra/grain/growing grain 0011.png")]
var growinggrainC11:Class;
var growinggrainB11:Bitmap = new growinggrainC11();
GrowingArray.push(GetBMPData(growinggrainB11));
[Embed(source="../../assets/extra/grain/growing grain 0012.png")]
var growinggrainC12:Class;
var growinggrainB12:Bitmap = new growinggrainC12();
GrowingArray.push(GetBMPData(growinggrainB12));


		}
	}
	
	
	
}