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
	public class LeavesRotating extends Sprite 
	{
		private var RotatingArray:Array = new Array();
		public function LeavesRotating() {
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
			
			d = RotatingArray[num];
			
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
	
		
		private function CreateData():void {
			[Embed(source="../../assets/extra/leaves/appearing0000.png")]
var appearingC0:Class;
var appearingB0:Bitmap = new appearingC0();
RotatingArray.push(GetBMPData(appearingB0));
[Embed(source="../../assets/extra/leaves/appearing0001.png")]
var appearingC1:Class;
var appearingB1:Bitmap = new appearingC1();
RotatingArray.push(GetBMPData(appearingB1));
[Embed(source="../../assets/extra/leaves/appearing0002.png")]
var appearingC2:Class;
var appearingB2:Bitmap = new appearingC2();
RotatingArray.push(GetBMPData(appearingB2));
[Embed(source="../../assets/extra/leaves/appearing0003.png")]
var appearingC3:Class;
var appearingB3:Bitmap = new appearingC3();
RotatingArray.push(GetBMPData(appearingB3));
[Embed(source="../../assets/extra/leaves/appearing0004.png")]
var appearingC4:Class;
var appearingB4:Bitmap = new appearingC4();
RotatingArray.push(GetBMPData(appearingB4));
[Embed(source="../../assets/extra/leaves/appearing0005.png")]
var appearingC5:Class;
var appearingB5:Bitmap = new appearingC5();
RotatingArray.push(GetBMPData(appearingB5));
[Embed(source="../../assets/extra/leaves/appearing0006.png")]
var appearingC6:Class;
var appearingB6:Bitmap = new appearingC6();
RotatingArray.push(GetBMPData(appearingB6));
[Embed(source="../../assets/extra/leaves/appearing0007.png")]
var appearingC7:Class;
var appearingB7:Bitmap = new appearingC7();
RotatingArray.push(GetBMPData(appearingB7));
[Embed(source="../../assets/extra/leaves/appearing0008.png")]
var appearingC8:Class;
var appearingB8:Bitmap = new appearingC8();
RotatingArray.push(GetBMPData(appearingB8));
[Embed(source="../../assets/extra/leaves/appearing0009.png")]
var appearingC9:Class;
var appearingB9:Bitmap = new appearingC9();
RotatingArray.push(GetBMPData(appearingB9));
[Embed(source="../../assets/extra/leaves/appearing0010.png")]
var appearingC10:Class;
var appearingB10:Bitmap = new appearingC10();
RotatingArray.push(GetBMPData(appearingB10));
[Embed(source="../../assets/extra/leaves/appearing0011.png")]
var appearingC11:Class;
var appearingB11:Bitmap = new appearingC11();
RotatingArray.push(GetBMPData(appearingB11));
[Embed(source="../../assets/extra/leaves/appearing0012.png")]
var appearingC12:Class;
var appearingB12:Bitmap = new appearingC12();
RotatingArray.push(GetBMPData(appearingB12));
[Embed(source="../../assets/extra/leaves/appearing0013.png")]
var appearingC13:Class;
var appearingB13:Bitmap = new appearingC13();
RotatingArray.push(GetBMPData(appearingB13));
[Embed(source="../../assets/extra/leaves/appearing0014.png")]
var appearingC14:Class;
var appearingB14:Bitmap = new appearingC14();
RotatingArray.push(GetBMPData(appearingB14));
[Embed(source="../../assets/extra/leaves/appearing0015.png")]
var appearingC15:Class;
var appearingB15:Bitmap = new appearingC15();
RotatingArray.push(GetBMPData(appearingB15));
[Embed(source="../../assets/extra/leaves/appearing0016.png")]
var appearingC16:Class;
var appearingB16:Bitmap = new appearingC16();
RotatingArray.push(GetBMPData(appearingB16));
[Embed(source="../../assets/extra/leaves/appearing0017.png")]
var appearingC17:Class;
var appearingB17:Bitmap = new appearingC17();
RotatingArray.push(GetBMPData(appearingB17));
[Embed(source="../../assets/extra/leaves/appearing0018.png")]
var appearingC18:Class;
var appearingB18:Bitmap = new appearingC18();
RotatingArray.push(GetBMPData(appearingB18));
[Embed(source="../../assets/extra/leaves/appearing0019.png")]
var appearingC19:Class;
var appearingB19:Bitmap = new appearingC19();
RotatingArray.push(GetBMPData(appearingB19));
[Embed(source="../../assets/extra/leaves/appearing0020.png")]
var appearingC20:Class;
var appearingB20:Bitmap = new appearingC20();
RotatingArray.push(GetBMPData(appearingB20));
[Embed(source="../../assets/extra/leaves/appearing0021.png")]
var appearingC21:Class;
var appearingB21:Bitmap = new appearingC21();
RotatingArray.push(GetBMPData(appearingB21));
[Embed(source="../../assets/extra/leaves/appearing0022.png")]
var appearingC22:Class;
var appearingB22:Bitmap = new appearingC22();
RotatingArray.push(GetBMPData(appearingB22));
[Embed(source="../../assets/extra/leaves/appearing0023.png")]
var appearingC23:Class;
var appearingB23:Bitmap = new appearingC23();
RotatingArray.push(GetBMPData(appearingB23));
			
			
		[Embed(source="../../assets/extra/leaves/rotating0000.png")]
var rotatingC0:Class;
var rotatingB0:Bitmap = new rotatingC0();
RotatingArray.push(GetBMPData(rotatingB0));
[Embed(source="../../assets/extra/leaves/rotating0001.png")]
var rotatingC1:Class;
var rotatingB1:Bitmap = new rotatingC1();
RotatingArray.push(GetBMPData(rotatingB1));
[Embed(source="../../assets/extra/leaves/rotating0002.png")]
var rotatingC2:Class;
var rotatingB2:Bitmap = new rotatingC2();
RotatingArray.push(GetBMPData(rotatingB2));
[Embed(source="../../assets/extra/leaves/rotating0003.png")]
var rotatingC3:Class;
var rotatingB3:Bitmap = new rotatingC3();
RotatingArray.push(GetBMPData(rotatingB3));
[Embed(source="../../assets/extra/leaves/rotating0004.png")]
var rotatingC4:Class;
var rotatingB4:Bitmap = new rotatingC4();
RotatingArray.push(GetBMPData(rotatingB4));
[Embed(source="../../assets/extra/leaves/rotating0005.png")]
var rotatingC5:Class;
var rotatingB5:Bitmap = new rotatingC5();
RotatingArray.push(GetBMPData(rotatingB5));
[Embed(source="../../assets/extra/leaves/rotating0006.png")]
var rotatingC6:Class;
var rotatingB6:Bitmap = new rotatingC6();
RotatingArray.push(GetBMPData(rotatingB6));
[Embed(source="../../assets/extra/leaves/rotating0007.png")]
var rotatingC7:Class;
var rotatingB7:Bitmap = new rotatingC7();
RotatingArray.push(GetBMPData(rotatingB7));
[Embed(source="../../assets/extra/leaves/rotating0008.png")]
var rotatingC8:Class;
var rotatingB8:Bitmap = new rotatingC8();
RotatingArray.push(GetBMPData(rotatingB8));
[Embed(source="../../assets/extra/leaves/rotating0009.png")]
var rotatingC9:Class;
var rotatingB9:Bitmap = new rotatingC9();
RotatingArray.push(GetBMPData(rotatingB9));
[Embed(source="../../assets/extra/leaves/rotating0010.png")]
var rotatingC10:Class;
var rotatingB10:Bitmap = new rotatingC10();
RotatingArray.push(GetBMPData(rotatingB10));
[Embed(source="../../assets/extra/leaves/rotating0011.png")]
var rotatingC11:Class;
var rotatingB11:Bitmap = new rotatingC11();
RotatingArray.push(GetBMPData(rotatingB11));
[Embed(source="../../assets/extra/leaves/rotating0012.png")]
var rotatingC12:Class;
var rotatingB12:Bitmap = new rotatingC12();
RotatingArray.push(GetBMPData(rotatingB12));
[Embed(source="../../assets/extra/leaves/rotating0013.png")]
var rotatingC13:Class;
var rotatingB13:Bitmap = new rotatingC13();
RotatingArray.push(GetBMPData(rotatingB13));
[Embed(source="../../assets/extra/leaves/rotating0014.png")]
var rotatingC14:Class;
var rotatingB14:Bitmap = new rotatingC14();
RotatingArray.push(GetBMPData(rotatingB14));
[Embed(source="../../assets/extra/leaves/rotating0015.png")]
var rotatingC15:Class;
var rotatingB15:Bitmap = new rotatingC15();
RotatingArray.push(GetBMPData(rotatingB15));
[Embed(source="../../assets/extra/leaves/rotating0016.png")]
var rotatingC16:Class;
var rotatingB16:Bitmap = new rotatingC16();
RotatingArray.push(GetBMPData(rotatingB16));
[Embed(source="../../assets/extra/leaves/rotating0017.png")]
var rotatingC17:Class;
var rotatingB17:Bitmap = new rotatingC17();
RotatingArray.push(GetBMPData(rotatingB17));
[Embed(source="../../assets/extra/leaves/rotating0018.png")]
var rotatingC18:Class;
var rotatingB18:Bitmap = new rotatingC18();
RotatingArray.push(GetBMPData(rotatingB18));
[Embed(source="../../assets/extra/leaves/rotating0019.png")]
var rotatingC19:Class;
var rotatingB19:Bitmap = new rotatingC19();
RotatingArray.push(GetBMPData(rotatingB19));
[Embed(source="../../assets/extra/leaves/rotating0020.png")]
var rotatingC20:Class;
var rotatingB20:Bitmap = new rotatingC20();
RotatingArray.push(GetBMPData(rotatingB20));
[Embed(source="../../assets/extra/leaves/rotating0021.png")]
var rotatingC21:Class;
var rotatingB21:Bitmap = new rotatingC21();
RotatingArray.push(GetBMPData(rotatingB21));
[Embed(source="../../assets/extra/leaves/rotating0022.png")]
var rotatingC22:Class;
var rotatingB22:Bitmap = new rotatingC22();
RotatingArray.push(GetBMPData(rotatingB22));
[Embed(source="../../assets/extra/leaves/rotating0023.png")]
var rotatingC23:Class;
var rotatingB23:Bitmap = new rotatingC23();
RotatingArray.push(GetBMPData(rotatingB23));
[Embed(source="../../assets/extra/leaves/disappearing0000.png")]
var disappearingC0:Class;
var disappearingB0:Bitmap = new disappearingC0();
RotatingArray.push(GetBMPData(disappearingB0));
[Embed(source="../../assets/extra/leaves/disappearing0001.png")]
var disappearingC1:Class;
var disappearingB1:Bitmap = new disappearingC1();
RotatingArray.push(GetBMPData(disappearingB1));
[Embed(source="../../assets/extra/leaves/disappearing0002.png")]
var disappearingC2:Class;
var disappearingB2:Bitmap = new disappearingC2();
RotatingArray.push(GetBMPData(disappearingB2));
[Embed(source="../../assets/extra/leaves/disappearing0003.png")]
var disappearingC3:Class;
var disappearingB3:Bitmap = new disappearingC3();
RotatingArray.push(GetBMPData(disappearingB3));
[Embed(source="../../assets/extra/leaves/disappearing0004.png")]
var disappearingC4:Class;
var disappearingB4:Bitmap = new disappearingC4();
RotatingArray.push(GetBMPData(disappearingB4));
[Embed(source="../../assets/extra/leaves/disappearing0005.png")]
var disappearingC5:Class;
var disappearingB5:Bitmap = new disappearingC5();
RotatingArray.push(GetBMPData(disappearingB5));
[Embed(source="../../assets/extra/leaves/disappearing0006.png")]
var disappearingC6:Class;
var disappearingB6:Bitmap = new disappearingC6();
RotatingArray.push(GetBMPData(disappearingB6));
[Embed(source="../../assets/extra/leaves/disappearing0007.png")]
var disappearingC7:Class;
var disappearingB7:Bitmap = new disappearingC7();
RotatingArray.push(GetBMPData(disappearingB7));
[Embed(source="../../assets/extra/leaves/disappearing0008.png")]
var disappearingC8:Class;
var disappearingB8:Bitmap = new disappearingC8();
RotatingArray.push(GetBMPData(disappearingB8));
[Embed(source="../../assets/extra/leaves/disappearing0009.png")]
var disappearingC9:Class;
var disappearingB9:Bitmap = new disappearingC9();
RotatingArray.push(GetBMPData(disappearingB9));
[Embed(source="../../assets/extra/leaves/disappearing0010.png")]
var disappearingC10:Class;
var disappearingB10:Bitmap = new disappearingC10();
RotatingArray.push(GetBMPData(disappearingB10));
[Embed(source="../../assets/extra/leaves/disappearing0011.png")]
var disappearingC11:Class;
var disappearingB11:Bitmap = new disappearingC11();
RotatingArray.push(GetBMPData(disappearingB11));
[Embed(source="../../assets/extra/leaves/disappearing0012.png")]
var disappearingC12:Class;
var disappearingB12:Bitmap = new disappearingC12();
RotatingArray.push(GetBMPData(disappearingB12));
[Embed(source="../../assets/extra/leaves/disappearing0013.png")]
var disappearingC13:Class;
var disappearingB13:Bitmap = new disappearingC13();
RotatingArray.push(GetBMPData(disappearingB13));
[Embed(source="../../assets/extra/leaves/disappearing0014.png")]
var disappearingC14:Class;
var disappearingB14:Bitmap = new disappearingC14();
RotatingArray.push(GetBMPData(disappearingB14));
[Embed(source="../../assets/extra/leaves/disappearing0015.png")]
var disappearingC15:Class;
var disappearingB15:Bitmap = new disappearingC15();
RotatingArray.push(GetBMPData(disappearingB15));
[Embed(source="../../assets/extra/leaves/disappearing0016.png")]
var disappearingC16:Class;
var disappearingB16:Bitmap = new disappearingC16();
RotatingArray.push(GetBMPData(disappearingB16));
[Embed(source="../../assets/extra/leaves/disappearing0017.png")]
var disappearingC17:Class;
var disappearingB17:Bitmap = new disappearingC17();
RotatingArray.push(GetBMPData(disappearingB17));
[Embed(source="../../assets/extra/leaves/disappearing0018.png")]
var disappearingC18:Class;
var disappearingB18:Bitmap = new disappearingC18();
RotatingArray.push(GetBMPData(disappearingB18));
[Embed(source="../../assets/extra/leaves/disappearing0019.png")]
var disappearingC19:Class;
var disappearingB19:Bitmap = new disappearingC19();
RotatingArray.push(GetBMPData(disappearingB19));
[Embed(source="../../assets/extra/leaves/disappearing0020.png")]
var disappearingC20:Class;
var disappearingB20:Bitmap = new disappearingC20();
RotatingArray.push(GetBMPData(disappearingB20));
[Embed(source="../../assets/extra/leaves/disappearing0021.png")]
var disappearingC21:Class;
var disappearingB21:Bitmap = new disappearingC21();
RotatingArray.push(GetBMPData(disappearingB21));
[Embed(source="../../assets/extra/leaves/disappearing0022.png")]
var disappearingC22:Class;
var disappearingB22:Bitmap = new disappearingC22();
RotatingArray.push(GetBMPData(disappearingB22));
[Embed(source="../../assets/extra/leaves/disappearing0023.png")]
var disappearingC23:Class;
var disappearingB23:Bitmap = new disappearingC23();
RotatingArray.push(GetBMPData(disappearingB23));

		
		}
	}
	
	
	
}