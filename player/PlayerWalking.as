package player
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author E
	 */
	public class PlayerWalking extends Sprite 
	{
		public var WalkingEast:Array = new Array();
		public var WalkingSouthEast:Array = new Array();
		public var WalkingSouth:Array = new Array();
		public var WalkingSouthWest:Array = new Array();
		public var WalkingWest:Array = new Array();
		public var WalkingNorthWest:Array = new Array();
		public var WalkingNorth:Array = new Array();
		public var WalkingNorthEast:Array = new Array();
		
		public function PlayerWalking() {
			CreateData();
		}
		public function GetData(dir:String, num:int):BitmapData {
			var d:BitmapData;
			if (dir == "e") { d = WalkingEast[num]; }
			else if (dir == "se") { d = WalkingSouthEast[num]; }
			else if (dir == "s") { d = WalkingSouth[num]; }
			else if (dir == "sw") { d = WalkingSouthWest[num]; }
			else if (dir == "w") { d = WalkingWest[num]; }
			else if (dir == "nw") { d = WalkingNorthWest[num]; }
			else if (dir == "n") { d = WalkingNorth[num]; }
			else if (dir == "ne") { d = WalkingNorthEast[num]; }
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
		
		private function CreateData():void {
			[Embed(source="../assets/horse/walking e0000.png")]
var walkingCe0:Class;
var walkingBe0:Bitmap = new walkingCe0();
WalkingEast.push(GetBMPData(walkingBe0));
[Embed(source="../assets/horse/walking se0000.png")]
var walkingCse0:Class;
var walkingBse0:Bitmap = new walkingCse0();
WalkingSouthEast.push(GetBMPData(walkingBse0));
[Embed(source="../assets/horse/walking s0000.png")]
var walkingCs0:Class;
var walkingBs0:Bitmap = new walkingCs0();
WalkingSouth.push(GetBMPData(walkingBs0));
[Embed(source="../assets/horse/walking sw0000.png")]
var walkingCsw0:Class;
var walkingBsw0:Bitmap = new walkingCsw0();
WalkingSouthWest.push(GetBMPData(walkingBsw0));
[Embed(source="../assets/horse/walking w0000.png")]
var walkingCw0:Class;
var walkingBw0:Bitmap = new walkingCw0();
WalkingWest.push(GetBMPData(walkingBw0));
[Embed(source="../assets/horse/walking nw0000.png")]
var walkingCnw0:Class;
var walkingBnw0:Bitmap = new walkingCnw0();
WalkingNorthWest.push(GetBMPData(walkingBnw0));
[Embed(source="../assets/horse/walking n0000.png")]
var walkingCn0:Class;
var walkingBn0:Bitmap = new walkingCn0();
WalkingNorth.push(GetBMPData(walkingBn0));
[Embed(source="../assets/horse/walking ne0000.png")]
var walkingCne0:Class;
var walkingBne0:Bitmap = new walkingCne0();
WalkingNorthEast.push(GetBMPData(walkingBne0));
[Embed(source="../assets/horse/walking e0001.png")]
var walkingCe1:Class;
var walkingBe1:Bitmap = new walkingCe1();
WalkingEast.push(GetBMPData(walkingBe1));
[Embed(source="../assets/horse/walking se0001.png")]
var walkingCse1:Class;
var walkingBse1:Bitmap = new walkingCse1();
WalkingSouthEast.push(GetBMPData(walkingBse1));
[Embed(source="../assets/horse/walking s0001.png")]
var walkingCs1:Class;
var walkingBs1:Bitmap = new walkingCs1();
WalkingSouth.push(GetBMPData(walkingBs1));
[Embed(source="../assets/horse/walking sw0001.png")]
var walkingCsw1:Class;
var walkingBsw1:Bitmap = new walkingCsw1();
WalkingSouthWest.push(GetBMPData(walkingBsw1));
[Embed(source="../assets/horse/walking w0001.png")]
var walkingCw1:Class;
var walkingBw1:Bitmap = new walkingCw1();
WalkingWest.push(GetBMPData(walkingBw1));
[Embed(source="../assets/horse/walking nw0001.png")]
var walkingCnw1:Class;
var walkingBnw1:Bitmap = new walkingCnw1();
WalkingNorthWest.push(GetBMPData(walkingBnw1));
[Embed(source="../assets/horse/walking n0001.png")]
var walkingCn1:Class;
var walkingBn1:Bitmap = new walkingCn1();
WalkingNorth.push(GetBMPData(walkingBn1));
[Embed(source="../assets/horse/walking ne0001.png")]
var walkingCne1:Class;
var walkingBne1:Bitmap = new walkingCne1();
WalkingNorthEast.push(GetBMPData(walkingBne1));
[Embed(source="../assets/horse/walking e0002.png")]
var walkingCe2:Class;
var walkingBe2:Bitmap = new walkingCe2();
WalkingEast.push(GetBMPData(walkingBe2));
[Embed(source="../assets/horse/walking se0002.png")]
var walkingCse2:Class;
var walkingBse2:Bitmap = new walkingCse2();
WalkingSouthEast.push(GetBMPData(walkingBse2));
[Embed(source="../assets/horse/walking s0002.png")]
var walkingCs2:Class;
var walkingBs2:Bitmap = new walkingCs2();
WalkingSouth.push(GetBMPData(walkingBs2));
[Embed(source="../assets/horse/walking sw0002.png")]
var walkingCsw2:Class;
var walkingBsw2:Bitmap = new walkingCsw2();
WalkingSouthWest.push(GetBMPData(walkingBsw2));
[Embed(source="../assets/horse/walking w0002.png")]
var walkingCw2:Class;
var walkingBw2:Bitmap = new walkingCw2();
WalkingWest.push(GetBMPData(walkingBw2));
[Embed(source="../assets/horse/walking nw0002.png")]
var walkingCnw2:Class;
var walkingBnw2:Bitmap = new walkingCnw2();
WalkingNorthWest.push(GetBMPData(walkingBnw2));
[Embed(source="../assets/horse/walking n0002.png")]
var walkingCn2:Class;
var walkingBn2:Bitmap = new walkingCn2();
WalkingNorth.push(GetBMPData(walkingBn2));
[Embed(source="../assets/horse/walking ne0002.png")]
var walkingCne2:Class;
var walkingBne2:Bitmap = new walkingCne2();
WalkingNorthEast.push(GetBMPData(walkingBne2));
[Embed(source="../assets/horse/walking e0003.png")]
var walkingCe3:Class;
var walkingBe3:Bitmap = new walkingCe3();
WalkingEast.push(GetBMPData(walkingBe3));
[Embed(source="../assets/horse/walking se0003.png")]
var walkingCse3:Class;
var walkingBse3:Bitmap = new walkingCse3();
WalkingSouthEast.push(GetBMPData(walkingBse3));
[Embed(source="../assets/horse/walking s0003.png")]
var walkingCs3:Class;
var walkingBs3:Bitmap = new walkingCs3();
WalkingSouth.push(GetBMPData(walkingBs3));
[Embed(source="../assets/horse/walking sw0003.png")]
var walkingCsw3:Class;
var walkingBsw3:Bitmap = new walkingCsw3();
WalkingSouthWest.push(GetBMPData(walkingBsw3));
[Embed(source="../assets/horse/walking w0003.png")]
var walkingCw3:Class;
var walkingBw3:Bitmap = new walkingCw3();
WalkingWest.push(GetBMPData(walkingBw3));
[Embed(source="../assets/horse/walking nw0003.png")]
var walkingCnw3:Class;
var walkingBnw3:Bitmap = new walkingCnw3();
WalkingNorthWest.push(GetBMPData(walkingBnw3));
[Embed(source="../assets/horse/walking n0003.png")]
var walkingCn3:Class;
var walkingBn3:Bitmap = new walkingCn3();
WalkingNorth.push(GetBMPData(walkingBn3));
[Embed(source="../assets/horse/walking ne0003.png")]
var walkingCne3:Class;
var walkingBne3:Bitmap = new walkingCne3();
WalkingNorthEast.push(GetBMPData(walkingBne3));
[Embed(source="../assets/horse/walking e0004.png")]
var walkingCe4:Class;
var walkingBe4:Bitmap = new walkingCe4();
WalkingEast.push(GetBMPData(walkingBe4));
[Embed(source="../assets/horse/walking se0004.png")]
var walkingCse4:Class;
var walkingBse4:Bitmap = new walkingCse4();
WalkingSouthEast.push(GetBMPData(walkingBse4));
[Embed(source="../assets/horse/walking s0004.png")]
var walkingCs4:Class;
var walkingBs4:Bitmap = new walkingCs4();
WalkingSouth.push(GetBMPData(walkingBs4));
[Embed(source="../assets/horse/walking sw0004.png")]
var walkingCsw4:Class;
var walkingBsw4:Bitmap = new walkingCsw4();
WalkingSouthWest.push(GetBMPData(walkingBsw4));
[Embed(source="../assets/horse/walking w0004.png")]
var walkingCw4:Class;
var walkingBw4:Bitmap = new walkingCw4();
WalkingWest.push(GetBMPData(walkingBw4));
[Embed(source="../assets/horse/walking nw0004.png")]
var walkingCnw4:Class;
var walkingBnw4:Bitmap = new walkingCnw4();
WalkingNorthWest.push(GetBMPData(walkingBnw4));
[Embed(source="../assets/horse/walking n0004.png")]
var walkingCn4:Class;
var walkingBn4:Bitmap = new walkingCn4();
WalkingNorth.push(GetBMPData(walkingBn4));
[Embed(source="../assets/horse/walking ne0004.png")]
var walkingCne4:Class;
var walkingBne4:Bitmap = new walkingCne4();
WalkingNorthEast.push(GetBMPData(walkingBne4));
[Embed(source="../assets/horse/walking e0005.png")]
var walkingCe5:Class;
var walkingBe5:Bitmap = new walkingCe5();
WalkingEast.push(GetBMPData(walkingBe5));
[Embed(source="../assets/horse/walking se0005.png")]
var walkingCse5:Class;
var walkingBse5:Bitmap = new walkingCse5();
WalkingSouthEast.push(GetBMPData(walkingBse5));
[Embed(source="../assets/horse/walking s0005.png")]
var walkingCs5:Class;
var walkingBs5:Bitmap = new walkingCs5();
WalkingSouth.push(GetBMPData(walkingBs5));
[Embed(source="../assets/horse/walking sw0005.png")]
var walkingCsw5:Class;
var walkingBsw5:Bitmap = new walkingCsw5();
WalkingSouthWest.push(GetBMPData(walkingBsw5));
[Embed(source="../assets/horse/walking w0005.png")]
var walkingCw5:Class;
var walkingBw5:Bitmap = new walkingCw5();
WalkingWest.push(GetBMPData(walkingBw5));
[Embed(source="../assets/horse/walking nw0005.png")]
var walkingCnw5:Class;
var walkingBnw5:Bitmap = new walkingCnw5();
WalkingNorthWest.push(GetBMPData(walkingBnw5));
[Embed(source="../assets/horse/walking n0005.png")]
var walkingCn5:Class;
var walkingBn5:Bitmap = new walkingCn5();
WalkingNorth.push(GetBMPData(walkingBn5));
[Embed(source="../assets/horse/walking ne0005.png")]
var walkingCne5:Class;
var walkingBne5:Bitmap = new walkingCne5();
WalkingNorthEast.push(GetBMPData(walkingBne5));
[Embed(source="../assets/horse/walking e0006.png")]
var walkingCe6:Class;
var walkingBe6:Bitmap = new walkingCe6();
WalkingEast.push(GetBMPData(walkingBe6));
[Embed(source="../assets/horse/walking se0006.png")]
var walkingCse6:Class;
var walkingBse6:Bitmap = new walkingCse6();
WalkingSouthEast.push(GetBMPData(walkingBse6));
[Embed(source="../assets/horse/walking s0006.png")]
var walkingCs6:Class;
var walkingBs6:Bitmap = new walkingCs6();
WalkingSouth.push(GetBMPData(walkingBs6));
[Embed(source="../assets/horse/walking sw0006.png")]
var walkingCsw6:Class;
var walkingBsw6:Bitmap = new walkingCsw6();
WalkingSouthWest.push(GetBMPData(walkingBsw6));
[Embed(source="../assets/horse/walking w0006.png")]
var walkingCw6:Class;
var walkingBw6:Bitmap = new walkingCw6();
WalkingWest.push(GetBMPData(walkingBw6));
[Embed(source="../assets/horse/walking nw0006.png")]
var walkingCnw6:Class;
var walkingBnw6:Bitmap = new walkingCnw6();
WalkingNorthWest.push(GetBMPData(walkingBnw6));
[Embed(source="../assets/horse/walking n0006.png")]
var walkingCn6:Class;
var walkingBn6:Bitmap = new walkingCn6();
WalkingNorth.push(GetBMPData(walkingBn6));
[Embed(source="../assets/horse/walking ne0006.png")]
var walkingCne6:Class;
var walkingBne6:Bitmap = new walkingCne6();
WalkingNorthEast.push(GetBMPData(walkingBne6));
[Embed(source="../assets/horse/walking e0007.png")]
var walkingCe7:Class;
var walkingBe7:Bitmap = new walkingCe7();
WalkingEast.push(GetBMPData(walkingBe7));
[Embed(source="../assets/horse/walking se0007.png")]
var walkingCse7:Class;
var walkingBse7:Bitmap = new walkingCse7();
WalkingSouthEast.push(GetBMPData(walkingBse7));
[Embed(source="../assets/horse/walking s0007.png")]
var walkingCs7:Class;
var walkingBs7:Bitmap = new walkingCs7();
WalkingSouth.push(GetBMPData(walkingBs7));
[Embed(source="../assets/horse/walking sw0007.png")]
var walkingCsw7:Class;
var walkingBsw7:Bitmap = new walkingCsw7();
WalkingSouthWest.push(GetBMPData(walkingBsw7));
[Embed(source="../assets/horse/walking w0007.png")]
var walkingCw7:Class;
var walkingBw7:Bitmap = new walkingCw7();
WalkingWest.push(GetBMPData(walkingBw7));
[Embed(source="../assets/horse/walking nw0007.png")]
var walkingCnw7:Class;
var walkingBnw7:Bitmap = new walkingCnw7();
WalkingNorthWest.push(GetBMPData(walkingBnw7));
[Embed(source="../assets/horse/walking n0007.png")]
var walkingCn7:Class;
var walkingBn7:Bitmap = new walkingCn7();
WalkingNorth.push(GetBMPData(walkingBn7));
[Embed(source="../assets/horse/walking ne0007.png")]
var walkingCne7:Class;
var walkingBne7:Bitmap = new walkingCne7();
WalkingNorthEast.push(GetBMPData(walkingBne7));
[Embed(source="../assets/horse/walking e0008.png")]
var walkingCe8:Class;
var walkingBe8:Bitmap = new walkingCe8();
WalkingEast.push(GetBMPData(walkingBe8));
[Embed(source="../assets/horse/walking se0008.png")]
var walkingCse8:Class;
var walkingBse8:Bitmap = new walkingCse8();
WalkingSouthEast.push(GetBMPData(walkingBse8));
[Embed(source="../assets/horse/walking s0008.png")]
var walkingCs8:Class;
var walkingBs8:Bitmap = new walkingCs8();
WalkingSouth.push(GetBMPData(walkingBs8));
[Embed(source="../assets/horse/walking sw0008.png")]
var walkingCsw8:Class;
var walkingBsw8:Bitmap = new walkingCsw8();
WalkingSouthWest.push(GetBMPData(walkingBsw8));
[Embed(source="../assets/horse/walking w0008.png")]
var walkingCw8:Class;
var walkingBw8:Bitmap = new walkingCw8();
WalkingWest.push(GetBMPData(walkingBw8));
[Embed(source="../assets/horse/walking nw0008.png")]
var walkingCnw8:Class;
var walkingBnw8:Bitmap = new walkingCnw8();
WalkingNorthWest.push(GetBMPData(walkingBnw8));
[Embed(source="../assets/horse/walking n0008.png")]
var walkingCn8:Class;
var walkingBn8:Bitmap = new walkingCn8();
WalkingNorth.push(GetBMPData(walkingBn8));
[Embed(source="../assets/horse/walking ne0008.png")]
var walkingCne8:Class;
var walkingBne8:Bitmap = new walkingCne8();
WalkingNorthEast.push(GetBMPData(walkingBne8));
[Embed(source="../assets/horse/walking e0009.png")]
var walkingCe9:Class;
var walkingBe9:Bitmap = new walkingCe9();
WalkingEast.push(GetBMPData(walkingBe9));
[Embed(source="../assets/horse/walking se0009.png")]
var walkingCse9:Class;
var walkingBse9:Bitmap = new walkingCse9();
WalkingSouthEast.push(GetBMPData(walkingBse9));
[Embed(source="../assets/horse/walking s0009.png")]
var walkingCs9:Class;
var walkingBs9:Bitmap = new walkingCs9();
WalkingSouth.push(GetBMPData(walkingBs9));
[Embed(source="../assets/horse/walking sw0009.png")]
var walkingCsw9:Class;
var walkingBsw9:Bitmap = new walkingCsw9();
WalkingSouthWest.push(GetBMPData(walkingBsw9));
[Embed(source="../assets/horse/walking w0009.png")]
var walkingCw9:Class;
var walkingBw9:Bitmap = new walkingCw9();
WalkingWest.push(GetBMPData(walkingBw9));
[Embed(source="../assets/horse/walking nw0009.png")]
var walkingCnw9:Class;
var walkingBnw9:Bitmap = new walkingCnw9();
WalkingNorthWest.push(GetBMPData(walkingBnw9));
[Embed(source="../assets/horse/walking n0009.png")]
var walkingCn9:Class;
var walkingBn9:Bitmap = new walkingCn9();
WalkingNorth.push(GetBMPData(walkingBn9));
[Embed(source="../assets/horse/walking ne0009.png")]
var walkingCne9:Class;
var walkingBne9:Bitmap = new walkingCne9();
WalkingNorthEast.push(GetBMPData(walkingBne9));
[Embed(source="../assets/horse/walking e0010.png")]
var walkingCe10:Class;
var walkingBe10:Bitmap = new walkingCe10();
WalkingEast.push(GetBMPData(walkingBe10));
[Embed(source="../assets/horse/walking se0010.png")]
var walkingCse10:Class;
var walkingBse10:Bitmap = new walkingCse10();
WalkingSouthEast.push(GetBMPData(walkingBse10));
[Embed(source="../assets/horse/walking s0010.png")]
var walkingCs10:Class;
var walkingBs10:Bitmap = new walkingCs10();
WalkingSouth.push(GetBMPData(walkingBs10));
[Embed(source="../assets/horse/walking sw0010.png")]
var walkingCsw10:Class;
var walkingBsw10:Bitmap = new walkingCsw10();
WalkingSouthWest.push(GetBMPData(walkingBsw10));
[Embed(source="../assets/horse/walking w0010.png")]
var walkingCw10:Class;
var walkingBw10:Bitmap = new walkingCw10();
WalkingWest.push(GetBMPData(walkingBw10));
[Embed(source="../assets/horse/walking nw0010.png")]
var walkingCnw10:Class;
var walkingBnw10:Bitmap = new walkingCnw10();
WalkingNorthWest.push(GetBMPData(walkingBnw10));
[Embed(source="../assets/horse/walking n0010.png")]
var walkingCn10:Class;
var walkingBn10:Bitmap = new walkingCn10();
WalkingNorth.push(GetBMPData(walkingBn10));
[Embed(source="../assets/horse/walking ne0010.png")]
var walkingCne10:Class;
var walkingBne10:Bitmap = new walkingCne10();
WalkingNorthEast.push(GetBMPData(walkingBne10));
[Embed(source="../assets/horse/walking e0011.png")]
var walkingCe11:Class;
var walkingBe11:Bitmap = new walkingCe11();
WalkingEast.push(GetBMPData(walkingBe11));
[Embed(source="../assets/horse/walking se0011.png")]
var walkingCse11:Class;
var walkingBse11:Bitmap = new walkingCse11();
WalkingSouthEast.push(GetBMPData(walkingBse11));
[Embed(source="../assets/horse/walking s0011.png")]
var walkingCs11:Class;
var walkingBs11:Bitmap = new walkingCs11();
WalkingSouth.push(GetBMPData(walkingBs11));
[Embed(source="../assets/horse/walking sw0011.png")]
var walkingCsw11:Class;
var walkingBsw11:Bitmap = new walkingCsw11();
WalkingSouthWest.push(GetBMPData(walkingBsw11));
[Embed(source="../assets/horse/walking w0011.png")]
var walkingCw11:Class;
var walkingBw11:Bitmap = new walkingCw11();
WalkingWest.push(GetBMPData(walkingBw11));
[Embed(source="../assets/horse/walking nw0011.png")]
var walkingCnw11:Class;
var walkingBnw11:Bitmap = new walkingCnw11();
WalkingNorthWest.push(GetBMPData(walkingBnw11));
[Embed(source="../assets/horse/walking n0011.png")]
var walkingCn11:Class;
var walkingBn11:Bitmap = new walkingCn11();
WalkingNorth.push(GetBMPData(walkingBn11));
[Embed(source="../assets/horse/walking ne0011.png")]
var walkingCne11:Class;
var walkingBne11:Bitmap = new walkingCne11();
WalkingNorthEast.push(GetBMPData(walkingBne11));

		}
	}
}