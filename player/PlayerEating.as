package player
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author E
	 */
	public class PlayerEating extends Sprite 
	{
		public var EatingEast:Array = new Array();
		public var EatingSouthEast:Array = new Array();
		public var EatingSouth:Array = new Array();
		public var EatingSouthWest:Array = new Array();
		public var EatingWest:Array = new Array();
		public var EatingNorthWest:Array = new Array();
		public var EatingNorth:Array = new Array();
		public var EatingNorthEast:Array = new Array();
		
		public function PlayerEating() {
			CreateData();
		}
		public function GetData(dir:String, num:int):BitmapData {
			var d:BitmapData;
			if (dir == "e") { d = EatingEast[num]; }
			else if (dir == "se") { d = EatingSouthEast[num]; }
			else if (dir == "s") { d = EatingSouth[num]; }
			else if (dir == "sw") { d = EatingSouthWest[num]; }
			else if (dir == "w") { d = EatingWest[num]; }
			else if (dir == "nw") { d = EatingNorthWest[num]; }
			else if (dir == "n") { d = EatingNorth[num]; }
			else if (dir == "ne") { d = EatingNorthEast[num]; }
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
		
		private function CreateData():void {
			[Embed(source="../assets/horse/eating e0000.png")]
var eatingCe0:Class;
var eatingBe0:Bitmap = new eatingCe0();
EatingEast.push(GetBMPData(eatingBe0));
[Embed(source="../assets/horse/eating se0000.png")]
var eatingCse0:Class;
var eatingBse0:Bitmap = new eatingCse0();
EatingSouthEast.push(GetBMPData(eatingBse0));
[Embed(source="../assets/horse/eating s0000.png")]
var eatingCs0:Class;
var eatingBs0:Bitmap = new eatingCs0();
EatingSouth.push(GetBMPData(eatingBs0));
[Embed(source="../assets/horse/eating sw0000.png")]
var eatingCsw0:Class;
var eatingBsw0:Bitmap = new eatingCsw0();
EatingSouthWest.push(GetBMPData(eatingBsw0));
[Embed(source="../assets/horse/eating w0000.png")]
var eatingCw0:Class;
var eatingBw0:Bitmap = new eatingCw0();
EatingWest.push(GetBMPData(eatingBw0));
[Embed(source="../assets/horse/eating nw0000.png")]
var eatingCnw0:Class;
var eatingBnw0:Bitmap = new eatingCnw0();
EatingNorthWest.push(GetBMPData(eatingBnw0));
[Embed(source="../assets/horse/eating n0000.png")]
var eatingCn0:Class;
var eatingBn0:Bitmap = new eatingCn0();
EatingNorth.push(GetBMPData(eatingBn0));
[Embed(source="../assets/horse/eating ne0000.png")]
var eatingCne0:Class;
var eatingBne0:Bitmap = new eatingCne0();
EatingNorthEast.push(GetBMPData(eatingBne0));
[Embed(source="../assets/horse/eating e0001.png")]
var eatingCe1:Class;
var eatingBe1:Bitmap = new eatingCe1();
EatingEast.push(GetBMPData(eatingBe1));
[Embed(source="../assets/horse/eating se0001.png")]
var eatingCse1:Class;
var eatingBse1:Bitmap = new eatingCse1();
EatingSouthEast.push(GetBMPData(eatingBse1));
[Embed(source="../assets/horse/eating s0001.png")]
var eatingCs1:Class;
var eatingBs1:Bitmap = new eatingCs1();
EatingSouth.push(GetBMPData(eatingBs1));
[Embed(source="../assets/horse/eating sw0001.png")]
var eatingCsw1:Class;
var eatingBsw1:Bitmap = new eatingCsw1();
EatingSouthWest.push(GetBMPData(eatingBsw1));
[Embed(source="../assets/horse/eating w0001.png")]
var eatingCw1:Class;
var eatingBw1:Bitmap = new eatingCw1();
EatingWest.push(GetBMPData(eatingBw1));
[Embed(source="../assets/horse/eating nw0001.png")]
var eatingCnw1:Class;
var eatingBnw1:Bitmap = new eatingCnw1();
EatingNorthWest.push(GetBMPData(eatingBnw1));
[Embed(source="../assets/horse/eating n0001.png")]
var eatingCn1:Class;
var eatingBn1:Bitmap = new eatingCn1();
EatingNorth.push(GetBMPData(eatingBn1));
[Embed(source="../assets/horse/eating ne0001.png")]
var eatingCne1:Class;
var eatingBne1:Bitmap = new eatingCne1();
EatingNorthEast.push(GetBMPData(eatingBne1));
[Embed(source="../assets/horse/eating e0002.png")]
var eatingCe2:Class;
var eatingBe2:Bitmap = new eatingCe2();
EatingEast.push(GetBMPData(eatingBe2));
[Embed(source="../assets/horse/eating se0002.png")]
var eatingCse2:Class;
var eatingBse2:Bitmap = new eatingCse2();
EatingSouthEast.push(GetBMPData(eatingBse2));
[Embed(source="../assets/horse/eating s0002.png")]
var eatingCs2:Class;
var eatingBs2:Bitmap = new eatingCs2();
EatingSouth.push(GetBMPData(eatingBs2));
[Embed(source="../assets/horse/eating sw0002.png")]
var eatingCsw2:Class;
var eatingBsw2:Bitmap = new eatingCsw2();
EatingSouthWest.push(GetBMPData(eatingBsw2));
[Embed(source="../assets/horse/eating w0002.png")]
var eatingCw2:Class;
var eatingBw2:Bitmap = new eatingCw2();
EatingWest.push(GetBMPData(eatingBw2));
[Embed(source="../assets/horse/eating nw0002.png")]
var eatingCnw2:Class;
var eatingBnw2:Bitmap = new eatingCnw2();
EatingNorthWest.push(GetBMPData(eatingBnw2));
[Embed(source="../assets/horse/eating n0002.png")]
var eatingCn2:Class;
var eatingBn2:Bitmap = new eatingCn2();
EatingNorth.push(GetBMPData(eatingBn2));
[Embed(source="../assets/horse/eating ne0002.png")]
var eatingCne2:Class;
var eatingBne2:Bitmap = new eatingCne2();
EatingNorthEast.push(GetBMPData(eatingBne2));
[Embed(source="../assets/horse/eating e0003.png")]
var eatingCe3:Class;
var eatingBe3:Bitmap = new eatingCe3();
EatingEast.push(GetBMPData(eatingBe3));
[Embed(source="../assets/horse/eating se0003.png")]
var eatingCse3:Class;
var eatingBse3:Bitmap = new eatingCse3();
EatingSouthEast.push(GetBMPData(eatingBse3));
[Embed(source="../assets/horse/eating s0003.png")]
var eatingCs3:Class;
var eatingBs3:Bitmap = new eatingCs3();
EatingSouth.push(GetBMPData(eatingBs3));
[Embed(source="../assets/horse/eating sw0003.png")]
var eatingCsw3:Class;
var eatingBsw3:Bitmap = new eatingCsw3();
EatingSouthWest.push(GetBMPData(eatingBsw3));
[Embed(source="../assets/horse/eating w0003.png")]
var eatingCw3:Class;
var eatingBw3:Bitmap = new eatingCw3();
EatingWest.push(GetBMPData(eatingBw3));
[Embed(source="../assets/horse/eating nw0003.png")]
var eatingCnw3:Class;
var eatingBnw3:Bitmap = new eatingCnw3();
EatingNorthWest.push(GetBMPData(eatingBnw3));
[Embed(source="../assets/horse/eating n0003.png")]
var eatingCn3:Class;
var eatingBn3:Bitmap = new eatingCn3();
EatingNorth.push(GetBMPData(eatingBn3));
[Embed(source="../assets/horse/eating ne0003.png")]
var eatingCne3:Class;
var eatingBne3:Bitmap = new eatingCne3();
EatingNorthEast.push(GetBMPData(eatingBne3));
[Embed(source="../assets/horse/eating e0004.png")]
var eatingCe4:Class;
var eatingBe4:Bitmap = new eatingCe4();
EatingEast.push(GetBMPData(eatingBe4));
[Embed(source="../assets/horse/eating se0004.png")]
var eatingCse4:Class;
var eatingBse4:Bitmap = new eatingCse4();
EatingSouthEast.push(GetBMPData(eatingBse4));
[Embed(source="../assets/horse/eating s0004.png")]
var eatingCs4:Class;
var eatingBs4:Bitmap = new eatingCs4();
EatingSouth.push(GetBMPData(eatingBs4));
[Embed(source="../assets/horse/eating sw0004.png")]
var eatingCsw4:Class;
var eatingBsw4:Bitmap = new eatingCsw4();
EatingSouthWest.push(GetBMPData(eatingBsw4));
[Embed(source="../assets/horse/eating w0004.png")]
var eatingCw4:Class;
var eatingBw4:Bitmap = new eatingCw4();
EatingWest.push(GetBMPData(eatingBw4));
[Embed(source="../assets/horse/eating nw0004.png")]
var eatingCnw4:Class;
var eatingBnw4:Bitmap = new eatingCnw4();
EatingNorthWest.push(GetBMPData(eatingBnw4));
[Embed(source="../assets/horse/eating n0004.png")]
var eatingCn4:Class;
var eatingBn4:Bitmap = new eatingCn4();
EatingNorth.push(GetBMPData(eatingBn4));
[Embed(source="../assets/horse/eating ne0004.png")]
var eatingCne4:Class;
var eatingBne4:Bitmap = new eatingCne4();
EatingNorthEast.push(GetBMPData(eatingBne4));
[Embed(source="../assets/horse/eating e0005.png")]
var eatingCe5:Class;
var eatingBe5:Bitmap = new eatingCe5();
EatingEast.push(GetBMPData(eatingBe5));
[Embed(source="../assets/horse/eating se0005.png")]
var eatingCse5:Class;
var eatingBse5:Bitmap = new eatingCse5();
EatingSouthEast.push(GetBMPData(eatingBse5));
[Embed(source="../assets/horse/eating s0005.png")]
var eatingCs5:Class;
var eatingBs5:Bitmap = new eatingCs5();
EatingSouth.push(GetBMPData(eatingBs5));
[Embed(source="../assets/horse/eating sw0005.png")]
var eatingCsw5:Class;
var eatingBsw5:Bitmap = new eatingCsw5();
EatingSouthWest.push(GetBMPData(eatingBsw5));
[Embed(source="../assets/horse/eating w0005.png")]
var eatingCw5:Class;
var eatingBw5:Bitmap = new eatingCw5();
EatingWest.push(GetBMPData(eatingBw5));
[Embed(source="../assets/horse/eating nw0005.png")]
var eatingCnw5:Class;
var eatingBnw5:Bitmap = new eatingCnw5();
EatingNorthWest.push(GetBMPData(eatingBnw5));
[Embed(source="../assets/horse/eating n0005.png")]
var eatingCn5:Class;
var eatingBn5:Bitmap = new eatingCn5();
EatingNorth.push(GetBMPData(eatingBn5));
[Embed(source="../assets/horse/eating ne0005.png")]
var eatingCne5:Class;
var eatingBne5:Bitmap = new eatingCne5();
EatingNorthEast.push(GetBMPData(eatingBne5));
[Embed(source="../assets/horse/eating e0006.png")]
var eatingCe6:Class;
var eatingBe6:Bitmap = new eatingCe6();
EatingEast.push(GetBMPData(eatingBe6));
[Embed(source="../assets/horse/eating se0006.png")]
var eatingCse6:Class;
var eatingBse6:Bitmap = new eatingCse6();
EatingSouthEast.push(GetBMPData(eatingBse6));
[Embed(source="../assets/horse/eating s0006.png")]
var eatingCs6:Class;
var eatingBs6:Bitmap = new eatingCs6();
EatingSouth.push(GetBMPData(eatingBs6));
[Embed(source="../assets/horse/eating sw0006.png")]
var eatingCsw6:Class;
var eatingBsw6:Bitmap = new eatingCsw6();
EatingSouthWest.push(GetBMPData(eatingBsw6));
[Embed(source="../assets/horse/eating w0006.png")]
var eatingCw6:Class;
var eatingBw6:Bitmap = new eatingCw6();
EatingWest.push(GetBMPData(eatingBw6));
[Embed(source="../assets/horse/eating nw0006.png")]
var eatingCnw6:Class;
var eatingBnw6:Bitmap = new eatingCnw6();
EatingNorthWest.push(GetBMPData(eatingBnw6));
[Embed(source="../assets/horse/eating n0006.png")]
var eatingCn6:Class;
var eatingBn6:Bitmap = new eatingCn6();
EatingNorth.push(GetBMPData(eatingBn6));
[Embed(source="../assets/horse/eating ne0006.png")]
var eatingCne6:Class;
var eatingBne6:Bitmap = new eatingCne6();
EatingNorthEast.push(GetBMPData(eatingBne6));
[Embed(source="../assets/horse/eating e0007.png")]
var eatingCe7:Class;
var eatingBe7:Bitmap = new eatingCe7();
EatingEast.push(GetBMPData(eatingBe7));
[Embed(source="../assets/horse/eating se0007.png")]
var eatingCse7:Class;
var eatingBse7:Bitmap = new eatingCse7();
EatingSouthEast.push(GetBMPData(eatingBse7));
[Embed(source="../assets/horse/eating s0007.png")]
var eatingCs7:Class;
var eatingBs7:Bitmap = new eatingCs7();
EatingSouth.push(GetBMPData(eatingBs7));
[Embed(source="../assets/horse/eating sw0007.png")]
var eatingCsw7:Class;
var eatingBsw7:Bitmap = new eatingCsw7();
EatingSouthWest.push(GetBMPData(eatingBsw7));
[Embed(source="../assets/horse/eating w0007.png")]
var eatingCw7:Class;
var eatingBw7:Bitmap = new eatingCw7();
EatingWest.push(GetBMPData(eatingBw7));
[Embed(source="../assets/horse/eating nw0007.png")]
var eatingCnw7:Class;
var eatingBnw7:Bitmap = new eatingCnw7();
EatingNorthWest.push(GetBMPData(eatingBnw7));
[Embed(source="../assets/horse/eating n0007.png")]
var eatingCn7:Class;
var eatingBn7:Bitmap = new eatingCn7();
EatingNorth.push(GetBMPData(eatingBn7));
[Embed(source="../assets/horse/eating ne0007.png")]
var eatingCne7:Class;
var eatingBne7:Bitmap = new eatingCne7();
EatingNorthEast.push(GetBMPData(eatingBne7));
[Embed(source="../assets/horse/eating e0008.png")]
var eatingCe8:Class;
var eatingBe8:Bitmap = new eatingCe8();
EatingEast.push(GetBMPData(eatingBe8));
[Embed(source="../assets/horse/eating se0008.png")]
var eatingCse8:Class;
var eatingBse8:Bitmap = new eatingCse8();
EatingSouthEast.push(GetBMPData(eatingBse8));
[Embed(source="../assets/horse/eating s0008.png")]
var eatingCs8:Class;
var eatingBs8:Bitmap = new eatingCs8();
EatingSouth.push(GetBMPData(eatingBs8));
[Embed(source="../assets/horse/eating sw0008.png")]
var eatingCsw8:Class;
var eatingBsw8:Bitmap = new eatingCsw8();
EatingSouthWest.push(GetBMPData(eatingBsw8));
[Embed(source="../assets/horse/eating w0008.png")]
var eatingCw8:Class;
var eatingBw8:Bitmap = new eatingCw8();
EatingWest.push(GetBMPData(eatingBw8));
[Embed(source="../assets/horse/eating nw0008.png")]
var eatingCnw8:Class;
var eatingBnw8:Bitmap = new eatingCnw8();
EatingNorthWest.push(GetBMPData(eatingBnw8));
[Embed(source="../assets/horse/eating n0008.png")]
var eatingCn8:Class;
var eatingBn8:Bitmap = new eatingCn8();
EatingNorth.push(GetBMPData(eatingBn8));
[Embed(source="../assets/horse/eating ne0008.png")]
var eatingCne8:Class;
var eatingBne8:Bitmap = new eatingCne8();
EatingNorthEast.push(GetBMPData(eatingBne8));
[Embed(source="../assets/horse/eating e0009.png")]
var eatingCe9:Class;
var eatingBe9:Bitmap = new eatingCe9();
EatingEast.push(GetBMPData(eatingBe9));
[Embed(source="../assets/horse/eating se0009.png")]
var eatingCse9:Class;
var eatingBse9:Bitmap = new eatingCse9();
EatingSouthEast.push(GetBMPData(eatingBse9));
[Embed(source="../assets/horse/eating s0009.png")]
var eatingCs9:Class;
var eatingBs9:Bitmap = new eatingCs9();
EatingSouth.push(GetBMPData(eatingBs9));
[Embed(source="../assets/horse/eating sw0009.png")]
var eatingCsw9:Class;
var eatingBsw9:Bitmap = new eatingCsw9();
EatingSouthWest.push(GetBMPData(eatingBsw9));
[Embed(source="../assets/horse/eating w0009.png")]
var eatingCw9:Class;
var eatingBw9:Bitmap = new eatingCw9();
EatingWest.push(GetBMPData(eatingBw9));
[Embed(source="../assets/horse/eating nw0009.png")]
var eatingCnw9:Class;
var eatingBnw9:Bitmap = new eatingCnw9();
EatingNorthWest.push(GetBMPData(eatingBnw9));
[Embed(source="../assets/horse/eating n0009.png")]
var eatingCn9:Class;
var eatingBn9:Bitmap = new eatingCn9();
EatingNorth.push(GetBMPData(eatingBn9));
[Embed(source="../assets/horse/eating ne0009.png")]
var eatingCne9:Class;
var eatingBne9:Bitmap = new eatingCne9();
EatingNorthEast.push(GetBMPData(eatingBne9));
[Embed(source="../assets/horse/eating e0010.png")]
var eatingCe10:Class;
var eatingBe10:Bitmap = new eatingCe10();
EatingEast.push(GetBMPData(eatingBe10));
[Embed(source="../assets/horse/eating se0010.png")]
var eatingCse10:Class;
var eatingBse10:Bitmap = new eatingCse10();
EatingSouthEast.push(GetBMPData(eatingBse10));
[Embed(source="../assets/horse/eating s0010.png")]
var eatingCs10:Class;
var eatingBs10:Bitmap = new eatingCs10();
EatingSouth.push(GetBMPData(eatingBs10));
[Embed(source="../assets/horse/eating sw0010.png")]
var eatingCsw10:Class;
var eatingBsw10:Bitmap = new eatingCsw10();
EatingSouthWest.push(GetBMPData(eatingBsw10));
[Embed(source="../assets/horse/eating w0010.png")]
var eatingCw10:Class;
var eatingBw10:Bitmap = new eatingCw10();
EatingWest.push(GetBMPData(eatingBw10));
[Embed(source="../assets/horse/eating nw0010.png")]
var eatingCnw10:Class;
var eatingBnw10:Bitmap = new eatingCnw10();
EatingNorthWest.push(GetBMPData(eatingBnw10));
[Embed(source="../assets/horse/eating n0010.png")]
var eatingCn10:Class;
var eatingBn10:Bitmap = new eatingCn10();
EatingNorth.push(GetBMPData(eatingBn10));
[Embed(source="../assets/horse/eating ne0010.png")]
var eatingCne10:Class;
var eatingBne10:Bitmap = new eatingCne10();
EatingNorthEast.push(GetBMPData(eatingBne10));
[Embed(source="../assets/horse/eating e0011.png")]
var eatingCe11:Class;
var eatingBe11:Bitmap = new eatingCe11();
EatingEast.push(GetBMPData(eatingBe11));
[Embed(source="../assets/horse/eating se0011.png")]
var eatingCse11:Class;
var eatingBse11:Bitmap = new eatingCse11();
EatingSouthEast.push(GetBMPData(eatingBse11));
[Embed(source="../assets/horse/eating s0011.png")]
var eatingCs11:Class;
var eatingBs11:Bitmap = new eatingCs11();
EatingSouth.push(GetBMPData(eatingBs11));
[Embed(source="../assets/horse/eating sw0011.png")]
var eatingCsw11:Class;
var eatingBsw11:Bitmap = new eatingCsw11();
EatingSouthWest.push(GetBMPData(eatingBsw11));
[Embed(source="../assets/horse/eating w0011.png")]
var eatingCw11:Class;
var eatingBw11:Bitmap = new eatingCw11();
EatingWest.push(GetBMPData(eatingBw11));
[Embed(source="../assets/horse/eating nw0011.png")]
var eatingCnw11:Class;
var eatingBnw11:Bitmap = new eatingCnw11();
EatingNorthWest.push(GetBMPData(eatingBnw11));
[Embed(source="../assets/horse/eating n0011.png")]
var eatingCn11:Class;
var eatingBn11:Bitmap = new eatingCn11();
EatingNorth.push(GetBMPData(eatingBn11));
[Embed(source="../assets/horse/eating ne0011.png")]
var eatingCne11:Class;
var eatingBne11:Bitmap = new eatingCne11();
EatingNorthEast.push(GetBMPData(eatingBne11));
[Embed(source="../assets/horse/eating e0012.png")]
var eatingCe12:Class;
var eatingBe12:Bitmap = new eatingCe12();
EatingEast.push(GetBMPData(eatingBe12));
[Embed(source="../assets/horse/eating se0012.png")]
var eatingCse12:Class;
var eatingBse12:Bitmap = new eatingCse12();
EatingSouthEast.push(GetBMPData(eatingBse12));
[Embed(source="../assets/horse/eating s0012.png")]
var eatingCs12:Class;
var eatingBs12:Bitmap = new eatingCs12();
EatingSouth.push(GetBMPData(eatingBs12));
[Embed(source="../assets/horse/eating sw0012.png")]
var eatingCsw12:Class;
var eatingBsw12:Bitmap = new eatingCsw12();
EatingSouthWest.push(GetBMPData(eatingBsw12));
[Embed(source="../assets/horse/eating w0012.png")]
var eatingCw12:Class;
var eatingBw12:Bitmap = new eatingCw12();
EatingWest.push(GetBMPData(eatingBw12));
[Embed(source="../assets/horse/eating nw0012.png")]
var eatingCnw12:Class;
var eatingBnw12:Bitmap = new eatingCnw12();
EatingNorthWest.push(GetBMPData(eatingBnw12));
[Embed(source="../assets/horse/eating n0012.png")]
var eatingCn12:Class;
var eatingBn12:Bitmap = new eatingCn12();
EatingNorth.push(GetBMPData(eatingBn12));
[Embed(source="../assets/horse/eating ne0012.png")]
var eatingCne12:Class;
var eatingBne12:Bitmap = new eatingCne12();
EatingNorthEast.push(GetBMPData(eatingBne12));
[Embed(source="../assets/horse/eating e0013.png")]
var eatingCe13:Class;
var eatingBe13:Bitmap = new eatingCe13();
EatingEast.push(GetBMPData(eatingBe13));
[Embed(source="../assets/horse/eating se0013.png")]
var eatingCse13:Class;
var eatingBse13:Bitmap = new eatingCse13();
EatingSouthEast.push(GetBMPData(eatingBse13));
[Embed(source="../assets/horse/eating s0013.png")]
var eatingCs13:Class;
var eatingBs13:Bitmap = new eatingCs13();
EatingSouth.push(GetBMPData(eatingBs13));
[Embed(source="../assets/horse/eating sw0013.png")]
var eatingCsw13:Class;
var eatingBsw13:Bitmap = new eatingCsw13();
EatingSouthWest.push(GetBMPData(eatingBsw13));
[Embed(source="../assets/horse/eating w0013.png")]
var eatingCw13:Class;
var eatingBw13:Bitmap = new eatingCw13();
EatingWest.push(GetBMPData(eatingBw13));
[Embed(source="../assets/horse/eating nw0013.png")]
var eatingCnw13:Class;
var eatingBnw13:Bitmap = new eatingCnw13();
EatingNorthWest.push(GetBMPData(eatingBnw13));
[Embed(source="../assets/horse/eating n0013.png")]
var eatingCn13:Class;
var eatingBn13:Bitmap = new eatingCn13();
EatingNorth.push(GetBMPData(eatingBn13));
[Embed(source="../assets/horse/eating ne0013.png")]
var eatingCne13:Class;
var eatingBne13:Bitmap = new eatingCne13();
EatingNorthEast.push(GetBMPData(eatingBne13));

		}
	}
}