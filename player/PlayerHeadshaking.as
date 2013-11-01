package player
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author E
	 */
	public class PlayerHeadshaking extends Sprite 
	{
		public var HeadshakingEast:Array = new Array();
		public var HeadshakingSouthEast:Array = new Array();
		public var HeadshakingSouth:Array = new Array();
		public var HeadshakingSouthWest:Array = new Array();
		public var HeadshakingWest:Array = new Array();
		public var HeadshakingNorthWest:Array = new Array();
		public var HeadshakingNorth:Array = new Array();
		public var HeadshakingNorthEast:Array = new Array();
		
		public function PlayerHeadshaking() {
			CreateData();
		}
		public function GetData(dir:String, num:int):BitmapData {
			var d:BitmapData;
			if (dir == "e") { d = HeadshakingEast[num]; }
			else if (dir == "se") { d = HeadshakingSouthEast[num]; }
			else if (dir == "s") { d = HeadshakingSouth[num]; }
			else if (dir == "sw") { d = HeadshakingSouthWest[num]; }
			else if (dir == "w") { d = HeadshakingWest[num]; }
			else if (dir == "nw") { d = HeadshakingNorthWest[num]; }
			else if (dir == "n") { d = HeadshakingNorth[num]; }
			else if (dir == "ne") { d = HeadshakingNorthEast[num]; }
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
		
		private function CreateData():void {
			[Embed(source="../assets/horse/headshaking e0000.png")]
var headshakingCe0:Class;
var headshakingBe0:Bitmap = new headshakingCe0();
HeadshakingEast.push(GetBMPData(headshakingBe0));
[Embed(source="../assets/horse/headshaking se0000.png")]
var headshakingCse0:Class;
var headshakingBse0:Bitmap = new headshakingCse0();
HeadshakingSouthEast.push(GetBMPData(headshakingBse0));
[Embed(source="../assets/horse/headshaking s0000.png")]
var headshakingCs0:Class;
var headshakingBs0:Bitmap = new headshakingCs0();
HeadshakingSouth.push(GetBMPData(headshakingBs0));
[Embed(source="../assets/horse/headshaking sw0000.png")]
var headshakingCsw0:Class;
var headshakingBsw0:Bitmap = new headshakingCsw0();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw0));
[Embed(source="../assets/horse/headshaking w0000.png")]
var headshakingCw0:Class;
var headshakingBw0:Bitmap = new headshakingCw0();
HeadshakingWest.push(GetBMPData(headshakingBw0));
[Embed(source="../assets/horse/headshaking nw0000.png")]
var headshakingCnw0:Class;
var headshakingBnw0:Bitmap = new headshakingCnw0();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw0));
[Embed(source="../assets/horse/headshaking n0000.png")]
var headshakingCn0:Class;
var headshakingBn0:Bitmap = new headshakingCn0();
HeadshakingNorth.push(GetBMPData(headshakingBn0));
[Embed(source="../assets/horse/headshaking ne0000.png")]
var headshakingCne0:Class;
var headshakingBne0:Bitmap = new headshakingCne0();
HeadshakingNorthEast.push(GetBMPData(headshakingBne0));
[Embed(source="../assets/horse/headshaking e0001.png")]
var headshakingCe1:Class;
var headshakingBe1:Bitmap = new headshakingCe1();
HeadshakingEast.push(GetBMPData(headshakingBe1));
[Embed(source="../assets/horse/headshaking se0001.png")]
var headshakingCse1:Class;
var headshakingBse1:Bitmap = new headshakingCse1();
HeadshakingSouthEast.push(GetBMPData(headshakingBse1));
[Embed(source="../assets/horse/headshaking s0001.png")]
var headshakingCs1:Class;
var headshakingBs1:Bitmap = new headshakingCs1();
HeadshakingSouth.push(GetBMPData(headshakingBs1));
[Embed(source="../assets/horse/headshaking sw0001.png")]
var headshakingCsw1:Class;
var headshakingBsw1:Bitmap = new headshakingCsw1();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw1));
[Embed(source="../assets/horse/headshaking w0001.png")]
var headshakingCw1:Class;
var headshakingBw1:Bitmap = new headshakingCw1();
HeadshakingWest.push(GetBMPData(headshakingBw1));
[Embed(source="../assets/horse/headshaking nw0001.png")]
var headshakingCnw1:Class;
var headshakingBnw1:Bitmap = new headshakingCnw1();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw1));
[Embed(source="../assets/horse/headshaking n0001.png")]
var headshakingCn1:Class;
var headshakingBn1:Bitmap = new headshakingCn1();
HeadshakingNorth.push(GetBMPData(headshakingBn1));
[Embed(source="../assets/horse/headshaking ne0001.png")]
var headshakingCne1:Class;
var headshakingBne1:Bitmap = new headshakingCne1();
HeadshakingNorthEast.push(GetBMPData(headshakingBne1));
[Embed(source="../assets/horse/headshaking e0002.png")]
var headshakingCe2:Class;
var headshakingBe2:Bitmap = new headshakingCe2();
HeadshakingEast.push(GetBMPData(headshakingBe2));
[Embed(source="../assets/horse/headshaking se0002.png")]
var headshakingCse2:Class;
var headshakingBse2:Bitmap = new headshakingCse2();
HeadshakingSouthEast.push(GetBMPData(headshakingBse2));
[Embed(source="../assets/horse/headshaking s0002.png")]
var headshakingCs2:Class;
var headshakingBs2:Bitmap = new headshakingCs2();
HeadshakingSouth.push(GetBMPData(headshakingBs2));
[Embed(source="../assets/horse/headshaking sw0002.png")]
var headshakingCsw2:Class;
var headshakingBsw2:Bitmap = new headshakingCsw2();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw2));
[Embed(source="../assets/horse/headshaking w0002.png")]
var headshakingCw2:Class;
var headshakingBw2:Bitmap = new headshakingCw2();
HeadshakingWest.push(GetBMPData(headshakingBw2));
[Embed(source="../assets/horse/headshaking nw0002.png")]
var headshakingCnw2:Class;
var headshakingBnw2:Bitmap = new headshakingCnw2();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw2));
[Embed(source="../assets/horse/headshaking n0002.png")]
var headshakingCn2:Class;
var headshakingBn2:Bitmap = new headshakingCn2();
HeadshakingNorth.push(GetBMPData(headshakingBn2));
[Embed(source="../assets/horse/headshaking ne0002.png")]
var headshakingCne2:Class;
var headshakingBne2:Bitmap = new headshakingCne2();
HeadshakingNorthEast.push(GetBMPData(headshakingBne2));
[Embed(source="../assets/horse/headshaking e0003.png")]
var headshakingCe3:Class;
var headshakingBe3:Bitmap = new headshakingCe3();
HeadshakingEast.push(GetBMPData(headshakingBe3));
[Embed(source="../assets/horse/headshaking se0003.png")]
var headshakingCse3:Class;
var headshakingBse3:Bitmap = new headshakingCse3();
HeadshakingSouthEast.push(GetBMPData(headshakingBse3));
[Embed(source="../assets/horse/headshaking s0003.png")]
var headshakingCs3:Class;
var headshakingBs3:Bitmap = new headshakingCs3();
HeadshakingSouth.push(GetBMPData(headshakingBs3));
[Embed(source="../assets/horse/headshaking sw0003.png")]
var headshakingCsw3:Class;
var headshakingBsw3:Bitmap = new headshakingCsw3();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw3));
[Embed(source="../assets/horse/headshaking w0003.png")]
var headshakingCw3:Class;
var headshakingBw3:Bitmap = new headshakingCw3();
HeadshakingWest.push(GetBMPData(headshakingBw3));
[Embed(source="../assets/horse/headshaking nw0003.png")]
var headshakingCnw3:Class;
var headshakingBnw3:Bitmap = new headshakingCnw3();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw3));
[Embed(source="../assets/horse/headshaking n0003.png")]
var headshakingCn3:Class;
var headshakingBn3:Bitmap = new headshakingCn3();
HeadshakingNorth.push(GetBMPData(headshakingBn3));
[Embed(source="../assets/horse/headshaking ne0003.png")]
var headshakingCne3:Class;
var headshakingBne3:Bitmap = new headshakingCne3();
HeadshakingNorthEast.push(GetBMPData(headshakingBne3));
[Embed(source="../assets/horse/headshaking e0004.png")]
var headshakingCe4:Class;
var headshakingBe4:Bitmap = new headshakingCe4();
HeadshakingEast.push(GetBMPData(headshakingBe4));
[Embed(source="../assets/horse/headshaking se0004.png")]
var headshakingCse4:Class;
var headshakingBse4:Bitmap = new headshakingCse4();
HeadshakingSouthEast.push(GetBMPData(headshakingBse4));
[Embed(source="../assets/horse/headshaking s0004.png")]
var headshakingCs4:Class;
var headshakingBs4:Bitmap = new headshakingCs4();
HeadshakingSouth.push(GetBMPData(headshakingBs4));
[Embed(source="../assets/horse/headshaking sw0004.png")]
var headshakingCsw4:Class;
var headshakingBsw4:Bitmap = new headshakingCsw4();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw4));
[Embed(source="../assets/horse/headshaking w0004.png")]
var headshakingCw4:Class;
var headshakingBw4:Bitmap = new headshakingCw4();
HeadshakingWest.push(GetBMPData(headshakingBw4));
[Embed(source="../assets/horse/headshaking nw0004.png")]
var headshakingCnw4:Class;
var headshakingBnw4:Bitmap = new headshakingCnw4();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw4));
[Embed(source="../assets/horse/headshaking n0004.png")]
var headshakingCn4:Class;
var headshakingBn4:Bitmap = new headshakingCn4();
HeadshakingNorth.push(GetBMPData(headshakingBn4));
[Embed(source="../assets/horse/headshaking ne0004.png")]
var headshakingCne4:Class;
var headshakingBne4:Bitmap = new headshakingCne4();
HeadshakingNorthEast.push(GetBMPData(headshakingBne4));
[Embed(source="../assets/horse/headshaking e0005.png")]
var headshakingCe5:Class;
var headshakingBe5:Bitmap = new headshakingCe5();
HeadshakingEast.push(GetBMPData(headshakingBe5));
[Embed(source="../assets/horse/headshaking se0005.png")]
var headshakingCse5:Class;
var headshakingBse5:Bitmap = new headshakingCse5();
HeadshakingSouthEast.push(GetBMPData(headshakingBse5));
[Embed(source="../assets/horse/headshaking s0005.png")]
var headshakingCs5:Class;
var headshakingBs5:Bitmap = new headshakingCs5();
HeadshakingSouth.push(GetBMPData(headshakingBs5));
[Embed(source="../assets/horse/headshaking sw0005.png")]
var headshakingCsw5:Class;
var headshakingBsw5:Bitmap = new headshakingCsw5();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw5));
[Embed(source="../assets/horse/headshaking w0005.png")]
var headshakingCw5:Class;
var headshakingBw5:Bitmap = new headshakingCw5();
HeadshakingWest.push(GetBMPData(headshakingBw5));
[Embed(source="../assets/horse/headshaking nw0005.png")]
var headshakingCnw5:Class;
var headshakingBnw5:Bitmap = new headshakingCnw5();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw5));
[Embed(source="../assets/horse/headshaking n0005.png")]
var headshakingCn5:Class;
var headshakingBn5:Bitmap = new headshakingCn5();
HeadshakingNorth.push(GetBMPData(headshakingBn5));
[Embed(source="../assets/horse/headshaking ne0005.png")]
var headshakingCne5:Class;
var headshakingBne5:Bitmap = new headshakingCne5();
HeadshakingNorthEast.push(GetBMPData(headshakingBne5));
[Embed(source="../assets/horse/headshaking e0006.png")]
var headshakingCe6:Class;
var headshakingBe6:Bitmap = new headshakingCe6();
HeadshakingEast.push(GetBMPData(headshakingBe6));
[Embed(source="../assets/horse/headshaking se0006.png")]
var headshakingCse6:Class;
var headshakingBse6:Bitmap = new headshakingCse6();
HeadshakingSouthEast.push(GetBMPData(headshakingBse6));
[Embed(source="../assets/horse/headshaking s0006.png")]
var headshakingCs6:Class;
var headshakingBs6:Bitmap = new headshakingCs6();
HeadshakingSouth.push(GetBMPData(headshakingBs6));
[Embed(source="../assets/horse/headshaking sw0006.png")]
var headshakingCsw6:Class;
var headshakingBsw6:Bitmap = new headshakingCsw6();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw6));
[Embed(source="../assets/horse/headshaking w0006.png")]
var headshakingCw6:Class;
var headshakingBw6:Bitmap = new headshakingCw6();
HeadshakingWest.push(GetBMPData(headshakingBw6));
[Embed(source="../assets/horse/headshaking nw0006.png")]
var headshakingCnw6:Class;
var headshakingBnw6:Bitmap = new headshakingCnw6();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw6));
[Embed(source="../assets/horse/headshaking n0006.png")]
var headshakingCn6:Class;
var headshakingBn6:Bitmap = new headshakingCn6();
HeadshakingNorth.push(GetBMPData(headshakingBn6));
[Embed(source="../assets/horse/headshaking ne0006.png")]
var headshakingCne6:Class;
var headshakingBne6:Bitmap = new headshakingCne6();
HeadshakingNorthEast.push(GetBMPData(headshakingBne6));
[Embed(source="../assets/horse/headshaking e0007.png")]
var headshakingCe7:Class;
var headshakingBe7:Bitmap = new headshakingCe7();
HeadshakingEast.push(GetBMPData(headshakingBe7));
[Embed(source="../assets/horse/headshaking se0007.png")]
var headshakingCse7:Class;
var headshakingBse7:Bitmap = new headshakingCse7();
HeadshakingSouthEast.push(GetBMPData(headshakingBse7));
[Embed(source="../assets/horse/headshaking s0007.png")]
var headshakingCs7:Class;
var headshakingBs7:Bitmap = new headshakingCs7();
HeadshakingSouth.push(GetBMPData(headshakingBs7));
[Embed(source="../assets/horse/headshaking sw0007.png")]
var headshakingCsw7:Class;
var headshakingBsw7:Bitmap = new headshakingCsw7();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw7));
[Embed(source="../assets/horse/headshaking w0007.png")]
var headshakingCw7:Class;
var headshakingBw7:Bitmap = new headshakingCw7();
HeadshakingWest.push(GetBMPData(headshakingBw7));
[Embed(source="../assets/horse/headshaking nw0007.png")]
var headshakingCnw7:Class;
var headshakingBnw7:Bitmap = new headshakingCnw7();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw7));
[Embed(source="../assets/horse/headshaking n0007.png")]
var headshakingCn7:Class;
var headshakingBn7:Bitmap = new headshakingCn7();
HeadshakingNorth.push(GetBMPData(headshakingBn7));
[Embed(source="../assets/horse/headshaking ne0007.png")]
var headshakingCne7:Class;
var headshakingBne7:Bitmap = new headshakingCne7();
HeadshakingNorthEast.push(GetBMPData(headshakingBne7));
[Embed(source="../assets/horse/headshaking e0008.png")]
var headshakingCe8:Class;
var headshakingBe8:Bitmap = new headshakingCe8();
HeadshakingEast.push(GetBMPData(headshakingBe8));
[Embed(source="../assets/horse/headshaking se0008.png")]
var headshakingCse8:Class;
var headshakingBse8:Bitmap = new headshakingCse8();
HeadshakingSouthEast.push(GetBMPData(headshakingBse8));
[Embed(source="../assets/horse/headshaking s0008.png")]
var headshakingCs8:Class;
var headshakingBs8:Bitmap = new headshakingCs8();
HeadshakingSouth.push(GetBMPData(headshakingBs8));
[Embed(source="../assets/horse/headshaking sw0008.png")]
var headshakingCsw8:Class;
var headshakingBsw8:Bitmap = new headshakingCsw8();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw8));
[Embed(source="../assets/horse/headshaking w0008.png")]
var headshakingCw8:Class;
var headshakingBw8:Bitmap = new headshakingCw8();
HeadshakingWest.push(GetBMPData(headshakingBw8));
[Embed(source="../assets/horse/headshaking nw0008.png")]
var headshakingCnw8:Class;
var headshakingBnw8:Bitmap = new headshakingCnw8();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw8));
[Embed(source="../assets/horse/headshaking n0008.png")]
var headshakingCn8:Class;
var headshakingBn8:Bitmap = new headshakingCn8();
HeadshakingNorth.push(GetBMPData(headshakingBn8));
[Embed(source="../assets/horse/headshaking ne0008.png")]
var headshakingCne8:Class;
var headshakingBne8:Bitmap = new headshakingCne8();
HeadshakingNorthEast.push(GetBMPData(headshakingBne8));
[Embed(source="../assets/horse/headshaking e0009.png")]
var headshakingCe9:Class;
var headshakingBe9:Bitmap = new headshakingCe9();
HeadshakingEast.push(GetBMPData(headshakingBe9));
[Embed(source="../assets/horse/headshaking se0009.png")]
var headshakingCse9:Class;
var headshakingBse9:Bitmap = new headshakingCse9();
HeadshakingSouthEast.push(GetBMPData(headshakingBse9));
[Embed(source="../assets/horse/headshaking s0009.png")]
var headshakingCs9:Class;
var headshakingBs9:Bitmap = new headshakingCs9();
HeadshakingSouth.push(GetBMPData(headshakingBs9));
[Embed(source="../assets/horse/headshaking sw0009.png")]
var headshakingCsw9:Class;
var headshakingBsw9:Bitmap = new headshakingCsw9();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw9));
[Embed(source="../assets/horse/headshaking w0009.png")]
var headshakingCw9:Class;
var headshakingBw9:Bitmap = new headshakingCw9();
HeadshakingWest.push(GetBMPData(headshakingBw9));
[Embed(source="../assets/horse/headshaking nw0009.png")]
var headshakingCnw9:Class;
var headshakingBnw9:Bitmap = new headshakingCnw9();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw9));
[Embed(source="../assets/horse/headshaking n0009.png")]
var headshakingCn9:Class;
var headshakingBn9:Bitmap = new headshakingCn9();
HeadshakingNorth.push(GetBMPData(headshakingBn9));
[Embed(source="../assets/horse/headshaking ne0009.png")]
var headshakingCne9:Class;
var headshakingBne9:Bitmap = new headshakingCne9();
HeadshakingNorthEast.push(GetBMPData(headshakingBne9));
[Embed(source="../assets/horse/headshaking e0010.png")]
var headshakingCe10:Class;
var headshakingBe10:Bitmap = new headshakingCe10();
HeadshakingEast.push(GetBMPData(headshakingBe10));
[Embed(source="../assets/horse/headshaking se0010.png")]
var headshakingCse10:Class;
var headshakingBse10:Bitmap = new headshakingCse10();
HeadshakingSouthEast.push(GetBMPData(headshakingBse10));
[Embed(source="../assets/horse/headshaking s0010.png")]
var headshakingCs10:Class;
var headshakingBs10:Bitmap = new headshakingCs10();
HeadshakingSouth.push(GetBMPData(headshakingBs10));
[Embed(source="../assets/horse/headshaking sw0010.png")]
var headshakingCsw10:Class;
var headshakingBsw10:Bitmap = new headshakingCsw10();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw10));
[Embed(source="../assets/horse/headshaking w0010.png")]
var headshakingCw10:Class;
var headshakingBw10:Bitmap = new headshakingCw10();
HeadshakingWest.push(GetBMPData(headshakingBw10));
[Embed(source="../assets/horse/headshaking nw0010.png")]
var headshakingCnw10:Class;
var headshakingBnw10:Bitmap = new headshakingCnw10();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw10));
[Embed(source="../assets/horse/headshaking n0010.png")]
var headshakingCn10:Class;
var headshakingBn10:Bitmap = new headshakingCn10();
HeadshakingNorth.push(GetBMPData(headshakingBn10));
[Embed(source="../assets/horse/headshaking ne0010.png")]
var headshakingCne10:Class;
var headshakingBne10:Bitmap = new headshakingCne10();
HeadshakingNorthEast.push(GetBMPData(headshakingBne10));
[Embed(source="../assets/horse/headshaking e0011.png")]
var headshakingCe11:Class;
var headshakingBe11:Bitmap = new headshakingCe11();
HeadshakingEast.push(GetBMPData(headshakingBe11));
[Embed(source="../assets/horse/headshaking se0011.png")]
var headshakingCse11:Class;
var headshakingBse11:Bitmap = new headshakingCse11();
HeadshakingSouthEast.push(GetBMPData(headshakingBse11));
[Embed(source="../assets/horse/headshaking s0011.png")]
var headshakingCs11:Class;
var headshakingBs11:Bitmap = new headshakingCs11();
HeadshakingSouth.push(GetBMPData(headshakingBs11));
[Embed(source="../assets/horse/headshaking sw0011.png")]
var headshakingCsw11:Class;
var headshakingBsw11:Bitmap = new headshakingCsw11();
HeadshakingSouthWest.push(GetBMPData(headshakingBsw11));
[Embed(source="../assets/horse/headshaking w0011.png")]
var headshakingCw11:Class;
var headshakingBw11:Bitmap = new headshakingCw11();
HeadshakingWest.push(GetBMPData(headshakingBw11));
[Embed(source="../assets/horse/headshaking nw0011.png")]
var headshakingCnw11:Class;
var headshakingBnw11:Bitmap = new headshakingCnw11();
HeadshakingNorthWest.push(GetBMPData(headshakingBnw11));
[Embed(source="../assets/horse/headshaking n0011.png")]
var headshakingCn11:Class;
var headshakingBn11:Bitmap = new headshakingCn11();
HeadshakingNorth.push(GetBMPData(headshakingBn11));
[Embed(source="../assets/horse/headshaking ne0011.png")]
var headshakingCne11:Class;
var headshakingBne11:Bitmap = new headshakingCne11();
HeadshakingNorthEast.push(GetBMPData(headshakingBne11));

		}
	}
}