package items.extras
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author E
	 */
	public class BirdFlying extends Sprite 
	{
		public var FlyingEast:Array = new Array();
		public var FlyingSouthEast:Array = new Array();
		public var FlyingSouth:Array = new Array();
		public var FlyingSouthWest:Array = new Array();
		public var FlyingWest:Array = new Array();
		public var FlyingNorthWest:Array = new Array();
		public var FlyingNorth:Array = new Array();
		public var FlyingNorthEast:Array = new Array();
		
		public function BirdFlying() {
			CreateData();
		}
		public function GetData(dir:String, num:int):BitmapData {
			var d:BitmapData;
			if (dir == "e") { d = FlyingEast[num]; }
			else if (dir == "se") { d = FlyingSouthEast[num]; }
			else if (dir == "s") { d = FlyingSouth[num]; }
			else if (dir == "sw") { d = FlyingSouthWest[num]; }
			else if (dir == "w") { d = FlyingWest[num]; }
			else if (dir == "nw") { d = FlyingNorthWest[num]; }
			else if (dir == "n") { d = FlyingNorth[num]; }
			else if (dir == "ne") { d = FlyingNorthEast[num]; }
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
		
		private function CreateData():void {
	[Embed(source="../../assets/extra/crow/flying e0000.png")]
var flyingCe0:Class;
var flyingBe0:Bitmap = new flyingCe0();
FlyingEast.push(GetBMPData(flyingBe0));
[Embed(source="../../assets/extra/crow/flying se0000.png")]
var flyingCse0:Class;
var flyingBse0:Bitmap = new flyingCse0();
FlyingSouthEast.push(GetBMPData(flyingBse0));
[Embed(source="../../assets/extra/crow/flying s0000.png")]
var flyingCs0:Class;
var flyingBs0:Bitmap = new flyingCs0();
FlyingSouth.push(GetBMPData(flyingBs0));
[Embed(source="../../assets/extra/crow/flying sw0000.png")]
var flyingCsw0:Class;
var flyingBsw0:Bitmap = new flyingCsw0();
FlyingSouthWest.push(GetBMPData(flyingBsw0));
[Embed(source="../../assets/extra/crow/flying w0000.png")]
var flyingCw0:Class;
var flyingBw0:Bitmap = new flyingCw0();
FlyingWest.push(GetBMPData(flyingBw0));
[Embed(source="../../assets/extra/crow/flying nw0000.png")]
var flyingCnw0:Class;
var flyingBnw0:Bitmap = new flyingCnw0();
FlyingNorthWest.push(GetBMPData(flyingBnw0));
[Embed(source="../../assets/extra/crow/flying n0000.png")]
var flyingCn0:Class;
var flyingBn0:Bitmap = new flyingCn0();
FlyingNorth.push(GetBMPData(flyingBn0));
[Embed(source="../../assets/extra/crow/flying ne0000.png")]
var flyingCne0:Class;
var flyingBne0:Bitmap = new flyingCne0();
FlyingNorthEast.push(GetBMPData(flyingBne0));
[Embed(source="../../assets/extra/crow/flying e0001.png")]
var flyingCe1:Class;
var flyingBe1:Bitmap = new flyingCe1();
FlyingEast.push(GetBMPData(flyingBe1));
[Embed(source="../../assets/extra/crow/flying se0001.png")]
var flyingCse1:Class;
var flyingBse1:Bitmap = new flyingCse1();
FlyingSouthEast.push(GetBMPData(flyingBse1));
[Embed(source="../../assets/extra/crow/flying s0001.png")]
var flyingCs1:Class;
var flyingBs1:Bitmap = new flyingCs1();
FlyingSouth.push(GetBMPData(flyingBs1));
[Embed(source="../../assets/extra/crow/flying sw0001.png")]
var flyingCsw1:Class;
var flyingBsw1:Bitmap = new flyingCsw1();
FlyingSouthWest.push(GetBMPData(flyingBsw1));
[Embed(source="../../assets/extra/crow/flying w0001.png")]
var flyingCw1:Class;
var flyingBw1:Bitmap = new flyingCw1();
FlyingWest.push(GetBMPData(flyingBw1));
[Embed(source="../../assets/extra/crow/flying nw0001.png")]
var flyingCnw1:Class;
var flyingBnw1:Bitmap = new flyingCnw1();
FlyingNorthWest.push(GetBMPData(flyingBnw1));
[Embed(source="../../assets/extra/crow/flying n0001.png")]
var flyingCn1:Class;
var flyingBn1:Bitmap = new flyingCn1();
FlyingNorth.push(GetBMPData(flyingBn1));
[Embed(source="../../assets/extra/crow/flying ne0001.png")]
var flyingCne1:Class;
var flyingBne1:Bitmap = new flyingCne1();
FlyingNorthEast.push(GetBMPData(flyingBne1));
[Embed(source="../../assets/extra/crow/flying e0002.png")]
var flyingCe2:Class;
var flyingBe2:Bitmap = new flyingCe2();
FlyingEast.push(GetBMPData(flyingBe2));
[Embed(source="../../assets/extra/crow/flying se0002.png")]
var flyingCse2:Class;
var flyingBse2:Bitmap = new flyingCse2();
FlyingSouthEast.push(GetBMPData(flyingBse2));
[Embed(source="../../assets/extra/crow/flying s0002.png")]
var flyingCs2:Class;
var flyingBs2:Bitmap = new flyingCs2();
FlyingSouth.push(GetBMPData(flyingBs2));
[Embed(source="../../assets/extra/crow/flying sw0002.png")]
var flyingCsw2:Class;
var flyingBsw2:Bitmap = new flyingCsw2();
FlyingSouthWest.push(GetBMPData(flyingBsw2));
[Embed(source="../../assets/extra/crow/flying w0002.png")]
var flyingCw2:Class;
var flyingBw2:Bitmap = new flyingCw2();
FlyingWest.push(GetBMPData(flyingBw2));
[Embed(source="../../assets/extra/crow/flying nw0002.png")]
var flyingCnw2:Class;
var flyingBnw2:Bitmap = new flyingCnw2();
FlyingNorthWest.push(GetBMPData(flyingBnw2));
[Embed(source="../../assets/extra/crow/flying n0002.png")]
var flyingCn2:Class;
var flyingBn2:Bitmap = new flyingCn2();
FlyingNorth.push(GetBMPData(flyingBn2));
[Embed(source="../../assets/extra/crow/flying ne0002.png")]
var flyingCne2:Class;
var flyingBne2:Bitmap = new flyingCne2();
FlyingNorthEast.push(GetBMPData(flyingBne2));
[Embed(source="../../assets/extra/crow/flying e0003.png")]
var flyingCe3:Class;
var flyingBe3:Bitmap = new flyingCe3();
FlyingEast.push(GetBMPData(flyingBe3));
[Embed(source="../../assets/extra/crow/flying se0003.png")]
var flyingCse3:Class;
var flyingBse3:Bitmap = new flyingCse3();
FlyingSouthEast.push(GetBMPData(flyingBse3));
[Embed(source="../../assets/extra/crow/flying s0003.png")]
var flyingCs3:Class;
var flyingBs3:Bitmap = new flyingCs3();
FlyingSouth.push(GetBMPData(flyingBs3));
[Embed(source="../../assets/extra/crow/flying sw0003.png")]
var flyingCsw3:Class;
var flyingBsw3:Bitmap = new flyingCsw3();
FlyingSouthWest.push(GetBMPData(flyingBsw3));
[Embed(source="../../assets/extra/crow/flying w0003.png")]
var flyingCw3:Class;
var flyingBw3:Bitmap = new flyingCw3();
FlyingWest.push(GetBMPData(flyingBw3));
[Embed(source="../../assets/extra/crow/flying nw0003.png")]
var flyingCnw3:Class;
var flyingBnw3:Bitmap = new flyingCnw3();
FlyingNorthWest.push(GetBMPData(flyingBnw3));
[Embed(source="../../assets/extra/crow/flying n0003.png")]
var flyingCn3:Class;
var flyingBn3:Bitmap = new flyingCn3();
FlyingNorth.push(GetBMPData(flyingBn3));
[Embed(source="../../assets/extra/crow/flying ne0003.png")]
var flyingCne3:Class;
var flyingBne3:Bitmap = new flyingCne3();
FlyingNorthEast.push(GetBMPData(flyingBne3));
[Embed(source="../../assets/extra/crow/flying e0004.png")]
var flyingCe4:Class;
var flyingBe4:Bitmap = new flyingCe4();
FlyingEast.push(GetBMPData(flyingBe4));
[Embed(source="../../assets/extra/crow/flying se0004.png")]
var flyingCse4:Class;
var flyingBse4:Bitmap = new flyingCse4();
FlyingSouthEast.push(GetBMPData(flyingBse4));
[Embed(source="../../assets/extra/crow/flying s0004.png")]
var flyingCs4:Class;
var flyingBs4:Bitmap = new flyingCs4();
FlyingSouth.push(GetBMPData(flyingBs4));
[Embed(source="../../assets/extra/crow/flying sw0004.png")]
var flyingCsw4:Class;
var flyingBsw4:Bitmap = new flyingCsw4();
FlyingSouthWest.push(GetBMPData(flyingBsw4));
[Embed(source="../../assets/extra/crow/flying w0004.png")]
var flyingCw4:Class;
var flyingBw4:Bitmap = new flyingCw4();
FlyingWest.push(GetBMPData(flyingBw4));
[Embed(source="../../assets/extra/crow/flying nw0004.png")]
var flyingCnw4:Class;
var flyingBnw4:Bitmap = new flyingCnw4();
FlyingNorthWest.push(GetBMPData(flyingBnw4));
[Embed(source="../../assets/extra/crow/flying n0004.png")]
var flyingCn4:Class;
var flyingBn4:Bitmap = new flyingCn4();
FlyingNorth.push(GetBMPData(flyingBn4));
[Embed(source="../../assets/extra/crow/flying ne0004.png")]
var flyingCne4:Class;
var flyingBne4:Bitmap = new flyingCne4();
FlyingNorthEast.push(GetBMPData(flyingBne4));
[Embed(source="../../assets/extra/crow/flying e0005.png")]
var flyingCe5:Class;
var flyingBe5:Bitmap = new flyingCe5();
FlyingEast.push(GetBMPData(flyingBe5));
[Embed(source="../../assets/extra/crow/flying se0005.png")]
var flyingCse5:Class;
var flyingBse5:Bitmap = new flyingCse5();
FlyingSouthEast.push(GetBMPData(flyingBse5));
[Embed(source="../../assets/extra/crow/flying s0005.png")]
var flyingCs5:Class;
var flyingBs5:Bitmap = new flyingCs5();
FlyingSouth.push(GetBMPData(flyingBs5));
[Embed(source="../../assets/extra/crow/flying sw0005.png")]
var flyingCsw5:Class;
var flyingBsw5:Bitmap = new flyingCsw5();
FlyingSouthWest.push(GetBMPData(flyingBsw5));
[Embed(source="../../assets/extra/crow/flying w0005.png")]
var flyingCw5:Class;
var flyingBw5:Bitmap = new flyingCw5();
FlyingWest.push(GetBMPData(flyingBw5));
[Embed(source="../../assets/extra/crow/flying nw0005.png")]
var flyingCnw5:Class;
var flyingBnw5:Bitmap = new flyingCnw5();
FlyingNorthWest.push(GetBMPData(flyingBnw5));
[Embed(source="../../assets/extra/crow/flying n0005.png")]
var flyingCn5:Class;
var flyingBn5:Bitmap = new flyingCn5();
FlyingNorth.push(GetBMPData(flyingBn5));
[Embed(source="../../assets/extra/crow/flying ne0005.png")]
var flyingCne5:Class;
var flyingBne5:Bitmap = new flyingCne5();
FlyingNorthEast.push(GetBMPData(flyingBne5));
[Embed(source="../../assets/extra/crow/flying e0006.png")]
var flyingCe6:Class;
var flyingBe6:Bitmap = new flyingCe6();
FlyingEast.push(GetBMPData(flyingBe6));
[Embed(source="../../assets/extra/crow/flying se0006.png")]
var flyingCse6:Class;
var flyingBse6:Bitmap = new flyingCse6();
FlyingSouthEast.push(GetBMPData(flyingBse6));
[Embed(source="../../assets/extra/crow/flying s0006.png")]
var flyingCs6:Class;
var flyingBs6:Bitmap = new flyingCs6();
FlyingSouth.push(GetBMPData(flyingBs6));
[Embed(source="../../assets/extra/crow/flying sw0006.png")]
var flyingCsw6:Class;
var flyingBsw6:Bitmap = new flyingCsw6();
FlyingSouthWest.push(GetBMPData(flyingBsw6));
[Embed(source="../../assets/extra/crow/flying w0006.png")]
var flyingCw6:Class;
var flyingBw6:Bitmap = new flyingCw6();
FlyingWest.push(GetBMPData(flyingBw6));
[Embed(source="../../assets/extra/crow/flying nw0006.png")]
var flyingCnw6:Class;
var flyingBnw6:Bitmap = new flyingCnw6();
FlyingNorthWest.push(GetBMPData(flyingBnw6));
[Embed(source="../../assets/extra/crow/flying n0006.png")]
var flyingCn6:Class;
var flyingBn6:Bitmap = new flyingCn6();
FlyingNorth.push(GetBMPData(flyingBn6));
[Embed(source="../../assets/extra/crow/flying ne0006.png")]
var flyingCne6:Class;
var flyingBne6:Bitmap = new flyingCne6();
FlyingNorthEast.push(GetBMPData(flyingBne6));
[Embed(source="../../assets/extra/crow/flying e0007.png")]
var flyingCe7:Class;
var flyingBe7:Bitmap = new flyingCe7();
FlyingEast.push(GetBMPData(flyingBe7));
[Embed(source="../../assets/extra/crow/flying se0007.png")]
var flyingCse7:Class;
var flyingBse7:Bitmap = new flyingCse7();
FlyingSouthEast.push(GetBMPData(flyingBse7));
[Embed(source="../../assets/extra/crow/flying s0007.png")]
var flyingCs7:Class;
var flyingBs7:Bitmap = new flyingCs7();
FlyingSouth.push(GetBMPData(flyingBs7));
[Embed(source="../../assets/extra/crow/flying sw0007.png")]
var flyingCsw7:Class;
var flyingBsw7:Bitmap = new flyingCsw7();
FlyingSouthWest.push(GetBMPData(flyingBsw7));
[Embed(source="../../assets/extra/crow/flying w0007.png")]
var flyingCw7:Class;
var flyingBw7:Bitmap = new flyingCw7();
FlyingWest.push(GetBMPData(flyingBw7));
[Embed(source="../../assets/extra/crow/flying nw0007.png")]
var flyingCnw7:Class;
var flyingBnw7:Bitmap = new flyingCnw7();
FlyingNorthWest.push(GetBMPData(flyingBnw7));
[Embed(source="../../assets/extra/crow/flying n0007.png")]
var flyingCn7:Class;
var flyingBn7:Bitmap = new flyingCn7();
FlyingNorth.push(GetBMPData(flyingBn7));
[Embed(source="../../assets/extra/crow/flying ne0007.png")]
var flyingCne7:Class;
var flyingBne7:Bitmap = new flyingCne7();
FlyingNorthEast.push(GetBMPData(flyingBne7));
[Embed(source="../../assets/extra/crow/flying e0008.png")]
var flyingCe8:Class;
var flyingBe8:Bitmap = new flyingCe8();
FlyingEast.push(GetBMPData(flyingBe8));
[Embed(source="../../assets/extra/crow/flying se0008.png")]
var flyingCse8:Class;
var flyingBse8:Bitmap = new flyingCse8();
FlyingSouthEast.push(GetBMPData(flyingBse8));
[Embed(source="../../assets/extra/crow/flying s0008.png")]
var flyingCs8:Class;
var flyingBs8:Bitmap = new flyingCs8();
FlyingSouth.push(GetBMPData(flyingBs8));
[Embed(source="../../assets/extra/crow/flying sw0008.png")]
var flyingCsw8:Class;
var flyingBsw8:Bitmap = new flyingCsw8();
FlyingSouthWest.push(GetBMPData(flyingBsw8));
[Embed(source="../../assets/extra/crow/flying w0008.png")]
var flyingCw8:Class;
var flyingBw8:Bitmap = new flyingCw8();
FlyingWest.push(GetBMPData(flyingBw8));
[Embed(source="../../assets/extra/crow/flying nw0008.png")]
var flyingCnw8:Class;
var flyingBnw8:Bitmap = new flyingCnw8();
FlyingNorthWest.push(GetBMPData(flyingBnw8));
[Embed(source="../../assets/extra/crow/flying n0008.png")]
var flyingCn8:Class;
var flyingBn8:Bitmap = new flyingCn8();
FlyingNorth.push(GetBMPData(flyingBn8));
[Embed(source="../../assets/extra/crow/flying ne0008.png")]
var flyingCne8:Class;
var flyingBne8:Bitmap = new flyingCne8();
FlyingNorthEast.push(GetBMPData(flyingBne8));
[Embed(source="../../assets/extra/crow/flying e0009.png")]
var flyingCe9:Class;
var flyingBe9:Bitmap = new flyingCe9();
FlyingEast.push(GetBMPData(flyingBe9));
[Embed(source="../../assets/extra/crow/flying se0009.png")]
var flyingCse9:Class;
var flyingBse9:Bitmap = new flyingCse9();
FlyingSouthEast.push(GetBMPData(flyingBse9));
[Embed(source="../../assets/extra/crow/flying s0009.png")]
var flyingCs9:Class;
var flyingBs9:Bitmap = new flyingCs9();
FlyingSouth.push(GetBMPData(flyingBs9));
[Embed(source="../../assets/extra/crow/flying sw0009.png")]
var flyingCsw9:Class;
var flyingBsw9:Bitmap = new flyingCsw9();
FlyingSouthWest.push(GetBMPData(flyingBsw9));
[Embed(source="../../assets/extra/crow/flying w0009.png")]
var flyingCw9:Class;
var flyingBw9:Bitmap = new flyingCw9();
FlyingWest.push(GetBMPData(flyingBw9));
[Embed(source="../../assets/extra/crow/flying nw0009.png")]
var flyingCnw9:Class;
var flyingBnw9:Bitmap = new flyingCnw9();
FlyingNorthWest.push(GetBMPData(flyingBnw9));
[Embed(source="../../assets/extra/crow/flying n0009.png")]
var flyingCn9:Class;
var flyingBn9:Bitmap = new flyingCn9();
FlyingNorth.push(GetBMPData(flyingBn9));
[Embed(source="../../assets/extra/crow/flying ne0009.png")]
var flyingCne9:Class;
var flyingBne9:Bitmap = new flyingCne9();
FlyingNorthEast.push(GetBMPData(flyingBne9));
[Embed(source="../../assets/extra/crow/flying e0010.png")]
var flyingCe10:Class;
var flyingBe10:Bitmap = new flyingCe10();
FlyingEast.push(GetBMPData(flyingBe10));
[Embed(source="../../assets/extra/crow/flying se0010.png")]
var flyingCse10:Class;
var flyingBse10:Bitmap = new flyingCse10();
FlyingSouthEast.push(GetBMPData(flyingBse10));
[Embed(source="../../assets/extra/crow/flying s0010.png")]
var flyingCs10:Class;
var flyingBs10:Bitmap = new flyingCs10();
FlyingSouth.push(GetBMPData(flyingBs10));
[Embed(source="../../assets/extra/crow/flying sw0010.png")]
var flyingCsw10:Class;
var flyingBsw10:Bitmap = new flyingCsw10();
FlyingSouthWest.push(GetBMPData(flyingBsw10));
[Embed(source="../../assets/extra/crow/flying w0010.png")]
var flyingCw10:Class;
var flyingBw10:Bitmap = new flyingCw10();
FlyingWest.push(GetBMPData(flyingBw10));
[Embed(source="../../assets/extra/crow/flying nw0010.png")]
var flyingCnw10:Class;
var flyingBnw10:Bitmap = new flyingCnw10();
FlyingNorthWest.push(GetBMPData(flyingBnw10));
[Embed(source="../../assets/extra/crow/flying n0010.png")]
var flyingCn10:Class;
var flyingBn10:Bitmap = new flyingCn10();
FlyingNorth.push(GetBMPData(flyingBn10));
[Embed(source="../../assets/extra/crow/flying ne0010.png")]
var flyingCne10:Class;
var flyingBne10:Bitmap = new flyingCne10();
FlyingNorthEast.push(GetBMPData(flyingBne10));
[Embed(source="../../assets/extra/crow/flying e0011.png")]
var flyingCe11:Class;
var flyingBe11:Bitmap = new flyingCe11();
FlyingEast.push(GetBMPData(flyingBe11));
[Embed(source="../../assets/extra/crow/flying se0011.png")]
var flyingCse11:Class;
var flyingBse11:Bitmap = new flyingCse11();
FlyingSouthEast.push(GetBMPData(flyingBse11));
[Embed(source="../../assets/extra/crow/flying s0011.png")]
var flyingCs11:Class;
var flyingBs11:Bitmap = new flyingCs11();
FlyingSouth.push(GetBMPData(flyingBs11));
[Embed(source="../../assets/extra/crow/flying sw0011.png")]
var flyingCsw11:Class;
var flyingBsw11:Bitmap = new flyingCsw11();
FlyingSouthWest.push(GetBMPData(flyingBsw11));
[Embed(source="../../assets/extra/crow/flying w0011.png")]
var flyingCw11:Class;
var flyingBw11:Bitmap = new flyingCw11();
FlyingWest.push(GetBMPData(flyingBw11));
[Embed(source="../../assets/extra/crow/flying nw0011.png")]
var flyingCnw11:Class;
var flyingBnw11:Bitmap = new flyingCnw11();
FlyingNorthWest.push(GetBMPData(flyingBnw11));
[Embed(source="../../assets/extra/crow/flying n0011.png")]
var flyingCn11:Class;
var flyingBn11:Bitmap = new flyingCn11();
FlyingNorth.push(GetBMPData(flyingBn11));
[Embed(source="../../assets/extra/crow/flying ne0011.png")]
var flyingCne11:Class;
var flyingBne11:Bitmap = new flyingCne11();
FlyingNorthEast.push(GetBMPData(flyingBne11));
[Embed(source="../../assets/extra/crow/flying e0012.png")]
var flyingCe12:Class;
var flyingBe12:Bitmap = new flyingCe12();
FlyingEast.push(GetBMPData(flyingBe12));
[Embed(source="../../assets/extra/crow/flying se0012.png")]
var flyingCse12:Class;
var flyingBse12:Bitmap = new flyingCse12();
FlyingSouthEast.push(GetBMPData(flyingBse12));
[Embed(source="../../assets/extra/crow/flying s0012.png")]
var flyingCs12:Class;
var flyingBs12:Bitmap = new flyingCs12();
FlyingSouth.push(GetBMPData(flyingBs12));
[Embed(source="../../assets/extra/crow/flying sw0012.png")]
var flyingCsw12:Class;
var flyingBsw12:Bitmap = new flyingCsw12();
FlyingSouthWest.push(GetBMPData(flyingBsw12));
[Embed(source="../../assets/extra/crow/flying w0012.png")]
var flyingCw12:Class;
var flyingBw12:Bitmap = new flyingCw12();
FlyingWest.push(GetBMPData(flyingBw12));
[Embed(source="../../assets/extra/crow/flying nw0012.png")]
var flyingCnw12:Class;
var flyingBnw12:Bitmap = new flyingCnw12();
FlyingNorthWest.push(GetBMPData(flyingBnw12));
[Embed(source="../../assets/extra/crow/flying n0012.png")]
var flyingCn12:Class;
var flyingBn12:Bitmap = new flyingCn12();
FlyingNorth.push(GetBMPData(flyingBn12));
[Embed(source="../../assets/extra/crow/flying ne0012.png")]
var flyingCne12:Class;
var flyingBne12:Bitmap = new flyingCne12();
FlyingNorthEast.push(GetBMPData(flyingBne12));
[Embed(source="../../assets/extra/crow/flying e0013.png")]
var flyingCe13:Class;
var flyingBe13:Bitmap = new flyingCe13();
FlyingEast.push(GetBMPData(flyingBe13));
[Embed(source="../../assets/extra/crow/flying se0013.png")]
var flyingCse13:Class;
var flyingBse13:Bitmap = new flyingCse13();
FlyingSouthEast.push(GetBMPData(flyingBse13));
[Embed(source="../../assets/extra/crow/flying s0013.png")]
var flyingCs13:Class;
var flyingBs13:Bitmap = new flyingCs13();
FlyingSouth.push(GetBMPData(flyingBs13));
[Embed(source="../../assets/extra/crow/flying sw0013.png")]
var flyingCsw13:Class;
var flyingBsw13:Bitmap = new flyingCsw13();
FlyingSouthWest.push(GetBMPData(flyingBsw13));
[Embed(source="../../assets/extra/crow/flying w0013.png")]
var flyingCw13:Class;
var flyingBw13:Bitmap = new flyingCw13();
FlyingWest.push(GetBMPData(flyingBw13));
[Embed(source="../../assets/extra/crow/flying nw0013.png")]
var flyingCnw13:Class;
var flyingBnw13:Bitmap = new flyingCnw13();
FlyingNorthWest.push(GetBMPData(flyingBnw13));
[Embed(source="../../assets/extra/crow/flying n0013.png")]
var flyingCn13:Class;
var flyingBn13:Bitmap = new flyingCn13();
FlyingNorth.push(GetBMPData(flyingBn13));
[Embed(source="../../assets/extra/crow/flying ne0013.png")]
var flyingCne13:Class;
var flyingBne13:Bitmap = new flyingCne13();
FlyingNorthEast.push(GetBMPData(flyingBne13));
[Embed(source="../../assets/extra/crow/flying e0014.png")]
var flyingCe14:Class;
var flyingBe14:Bitmap = new flyingCe14();
FlyingEast.push(GetBMPData(flyingBe14));
[Embed(source="../../assets/extra/crow/flying se0014.png")]
var flyingCse14:Class;
var flyingBse14:Bitmap = new flyingCse14();
FlyingSouthEast.push(GetBMPData(flyingBse14));
[Embed(source="../../assets/extra/crow/flying s0014.png")]
var flyingCs14:Class;
var flyingBs14:Bitmap = new flyingCs14();
FlyingSouth.push(GetBMPData(flyingBs14));
[Embed(source="../../assets/extra/crow/flying sw0014.png")]
var flyingCsw14:Class;
var flyingBsw14:Bitmap = new flyingCsw14();
FlyingSouthWest.push(GetBMPData(flyingBsw14));
[Embed(source="../../assets/extra/crow/flying w0014.png")]
var flyingCw14:Class;
var flyingBw14:Bitmap = new flyingCw14();
FlyingWest.push(GetBMPData(flyingBw14));
[Embed(source="../../assets/extra/crow/flying nw0014.png")]
var flyingCnw14:Class;
var flyingBnw14:Bitmap = new flyingCnw14();
FlyingNorthWest.push(GetBMPData(flyingBnw14));
[Embed(source="../../assets/extra/crow/flying n0014.png")]
var flyingCn14:Class;
var flyingBn14:Bitmap = new flyingCn14();
FlyingNorth.push(GetBMPData(flyingBn14));
[Embed(source="../../assets/extra/crow/flying ne0014.png")]
var flyingCne14:Class;
var flyingBne14:Bitmap = new flyingCne14();
FlyingNorthEast.push(GetBMPData(flyingBne14));
[Embed(source="../../assets/extra/crow/flying e0015.png")]
var flyingCe15:Class;
var flyingBe15:Bitmap = new flyingCe15();
FlyingEast.push(GetBMPData(flyingBe15));
[Embed(source="../../assets/extra/crow/flying se0015.png")]
var flyingCse15:Class;
var flyingBse15:Bitmap = new flyingCse15();
FlyingSouthEast.push(GetBMPData(flyingBse15));
[Embed(source="../../assets/extra/crow/flying s0015.png")]
var flyingCs15:Class;
var flyingBs15:Bitmap = new flyingCs15();
FlyingSouth.push(GetBMPData(flyingBs15));
[Embed(source="../../assets/extra/crow/flying sw0015.png")]
var flyingCsw15:Class;
var flyingBsw15:Bitmap = new flyingCsw15();
FlyingSouthWest.push(GetBMPData(flyingBsw15));
[Embed(source="../../assets/extra/crow/flying w0015.png")]
var flyingCw15:Class;
var flyingBw15:Bitmap = new flyingCw15();
FlyingWest.push(GetBMPData(flyingBw15));
[Embed(source="../../assets/extra/crow/flying nw0015.png")]
var flyingCnw15:Class;
var flyingBnw15:Bitmap = new flyingCnw15();
FlyingNorthWest.push(GetBMPData(flyingBnw15));
[Embed(source="../../assets/extra/crow/flying n0015.png")]
var flyingCn15:Class;
var flyingBn15:Bitmap = new flyingCn15();
FlyingNorth.push(GetBMPData(flyingBn15));
[Embed(source="../../assets/extra/crow/flying ne0015.png")]
var flyingCne15:Class;
var flyingBne15:Bitmap = new flyingCne15();
FlyingNorthEast.push(GetBMPData(flyingBne15));

		}
	}
}