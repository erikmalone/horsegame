package player
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author E
	 */
	public class PlayerRunning extends Sprite 
	{
		public var RunningEast:Array = new Array();
		public var RunningSouthEast:Array = new Array();
		public var RunningSouth:Array = new Array();
		public var RunningSouthWest:Array = new Array();
		public var RunningWest:Array = new Array();
		public var RunningNorthWest:Array = new Array();
		public var RunningNorth:Array = new Array();
		public var RunningNorthEast:Array = new Array();
		
		public function PlayerRunning() {
			CreateData();
		}
		public function GetData(dir:String, num:int):BitmapData {
			var d:BitmapData;
			if (dir == "e") { d = RunningEast[num]; }
			else if (dir == "se") { d = RunningSouthEast[num]; }
			else if (dir == "s") { d = RunningSouth[num]; }
			else if (dir == "sw") { d = RunningSouthWest[num]; }
			else if (dir == "w") { d = RunningWest[num]; }
			else if (dir == "nw") { d = RunningNorthWest[num]; }
			else if (dir == "n") { d = RunningNorth[num]; }
			else if (dir == "ne") { d = RunningNorthEast[num]; }
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
		
		private function CreateData():void {
			[Embed(source="../assets/horse/running e0000.png")]
var runningCe0:Class;
var runningBe0:Bitmap = new runningCe0();
RunningEast.push(GetBMPData(runningBe0));
[Embed(source="../assets/horse/running se0000.png")]
var runningCse0:Class;
var runningBse0:Bitmap = new runningCse0();
RunningSouthEast.push(GetBMPData(runningBse0));
[Embed(source="../assets/horse/running s0000.png")]
var runningCs0:Class;
var runningBs0:Bitmap = new runningCs0();
RunningSouth.push(GetBMPData(runningBs0));
[Embed(source="../assets/horse/running sw0000.png")]
var runningCsw0:Class;
var runningBsw0:Bitmap = new runningCsw0();
RunningSouthWest.push(GetBMPData(runningBsw0));
[Embed(source="../assets/horse/running w0000.png")]
var runningCw0:Class;
var runningBw0:Bitmap = new runningCw0();
RunningWest.push(GetBMPData(runningBw0));
[Embed(source="../assets/horse/running nw0000.png")]
var runningCnw0:Class;
var runningBnw0:Bitmap = new runningCnw0();
RunningNorthWest.push(GetBMPData(runningBnw0));
[Embed(source="../assets/horse/running n0000.png")]
var runningCn0:Class;
var runningBn0:Bitmap = new runningCn0();
RunningNorth.push(GetBMPData(runningBn0));
[Embed(source="../assets/horse/running ne0000.png")]
var runningCne0:Class;
var runningBne0:Bitmap = new runningCne0();
RunningNorthEast.push(GetBMPData(runningBne0));
[Embed(source="../assets/horse/running e0001.png")]
var runningCe1:Class;
var runningBe1:Bitmap = new runningCe1();
RunningEast.push(GetBMPData(runningBe1));
[Embed(source="../assets/horse/running se0001.png")]
var runningCse1:Class;
var runningBse1:Bitmap = new runningCse1();
RunningSouthEast.push(GetBMPData(runningBse1));
[Embed(source="../assets/horse/running s0001.png")]
var runningCs1:Class;
var runningBs1:Bitmap = new runningCs1();
RunningSouth.push(GetBMPData(runningBs1));
[Embed(source="../assets/horse/running sw0001.png")]
var runningCsw1:Class;
var runningBsw1:Bitmap = new runningCsw1();
RunningSouthWest.push(GetBMPData(runningBsw1));
[Embed(source="../assets/horse/running w0001.png")]
var runningCw1:Class;
var runningBw1:Bitmap = new runningCw1();
RunningWest.push(GetBMPData(runningBw1));
[Embed(source="../assets/horse/running nw0001.png")]
var runningCnw1:Class;
var runningBnw1:Bitmap = new runningCnw1();
RunningNorthWest.push(GetBMPData(runningBnw1));
[Embed(source="../assets/horse/running n0001.png")]
var runningCn1:Class;
var runningBn1:Bitmap = new runningCn1();
RunningNorth.push(GetBMPData(runningBn1));
[Embed(source="../assets/horse/running ne0001.png")]
var runningCne1:Class;
var runningBne1:Bitmap = new runningCne1();
RunningNorthEast.push(GetBMPData(runningBne1));
[Embed(source="../assets/horse/running e0002.png")]
var runningCe2:Class;
var runningBe2:Bitmap = new runningCe2();
RunningEast.push(GetBMPData(runningBe2));
[Embed(source="../assets/horse/running se0002.png")]
var runningCse2:Class;
var runningBse2:Bitmap = new runningCse2();
RunningSouthEast.push(GetBMPData(runningBse2));
[Embed(source="../assets/horse/running s0002.png")]
var runningCs2:Class;
var runningBs2:Bitmap = new runningCs2();
RunningSouth.push(GetBMPData(runningBs2));
[Embed(source="../assets/horse/running sw0002.png")]
var runningCsw2:Class;
var runningBsw2:Bitmap = new runningCsw2();
RunningSouthWest.push(GetBMPData(runningBsw2));
[Embed(source="../assets/horse/running w0002.png")]
var runningCw2:Class;
var runningBw2:Bitmap = new runningCw2();
RunningWest.push(GetBMPData(runningBw2));
[Embed(source="../assets/horse/running nw0002.png")]
var runningCnw2:Class;
var runningBnw2:Bitmap = new runningCnw2();
RunningNorthWest.push(GetBMPData(runningBnw2));
[Embed(source="../assets/horse/running n0002.png")]
var runningCn2:Class;
var runningBn2:Bitmap = new runningCn2();
RunningNorth.push(GetBMPData(runningBn2));
[Embed(source="../assets/horse/running ne0002.png")]
var runningCne2:Class;
var runningBne2:Bitmap = new runningCne2();
RunningNorthEast.push(GetBMPData(runningBne2));
[Embed(source="../assets/horse/running e0003.png")]
var runningCe3:Class;
var runningBe3:Bitmap = new runningCe3();
RunningEast.push(GetBMPData(runningBe3));
[Embed(source="../assets/horse/running se0003.png")]
var runningCse3:Class;
var runningBse3:Bitmap = new runningCse3();
RunningSouthEast.push(GetBMPData(runningBse3));
[Embed(source="../assets/horse/running s0003.png")]
var runningCs3:Class;
var runningBs3:Bitmap = new runningCs3();
RunningSouth.push(GetBMPData(runningBs3));
[Embed(source="../assets/horse/running sw0003.png")]
var runningCsw3:Class;
var runningBsw3:Bitmap = new runningCsw3();
RunningSouthWest.push(GetBMPData(runningBsw3));
[Embed(source="../assets/horse/running w0003.png")]
var runningCw3:Class;
var runningBw3:Bitmap = new runningCw3();
RunningWest.push(GetBMPData(runningBw3));
[Embed(source="../assets/horse/running nw0003.png")]
var runningCnw3:Class;
var runningBnw3:Bitmap = new runningCnw3();
RunningNorthWest.push(GetBMPData(runningBnw3));
[Embed(source="../assets/horse/running n0003.png")]
var runningCn3:Class;
var runningBn3:Bitmap = new runningCn3();
RunningNorth.push(GetBMPData(runningBn3));
[Embed(source="../assets/horse/running ne0003.png")]
var runningCne3:Class;
var runningBne3:Bitmap = new runningCne3();
RunningNorthEast.push(GetBMPData(runningBne3));
[Embed(source="../assets/horse/running e0004.png")]
var runningCe4:Class;
var runningBe4:Bitmap = new runningCe4();
RunningEast.push(GetBMPData(runningBe4));
[Embed(source="../assets/horse/running se0004.png")]
var runningCse4:Class;
var runningBse4:Bitmap = new runningCse4();
RunningSouthEast.push(GetBMPData(runningBse4));
[Embed(source="../assets/horse/running s0004.png")]
var runningCs4:Class;
var runningBs4:Bitmap = new runningCs4();
RunningSouth.push(GetBMPData(runningBs4));
[Embed(source="../assets/horse/running sw0004.png")]
var runningCsw4:Class;
var runningBsw4:Bitmap = new runningCsw4();
RunningSouthWest.push(GetBMPData(runningBsw4));
[Embed(source="../assets/horse/running w0004.png")]
var runningCw4:Class;
var runningBw4:Bitmap = new runningCw4();
RunningWest.push(GetBMPData(runningBw4));
[Embed(source="../assets/horse/running nw0004.png")]
var runningCnw4:Class;
var runningBnw4:Bitmap = new runningCnw4();
RunningNorthWest.push(GetBMPData(runningBnw4));
[Embed(source="../assets/horse/running n0004.png")]
var runningCn4:Class;
var runningBn4:Bitmap = new runningCn4();
RunningNorth.push(GetBMPData(runningBn4));
[Embed(source="../assets/horse/running ne0004.png")]
var runningCne4:Class;
var runningBne4:Bitmap = new runningCne4();
RunningNorthEast.push(GetBMPData(runningBne4));
[Embed(source="../assets/horse/running e0005.png")]
var runningCe5:Class;
var runningBe5:Bitmap = new runningCe5();
RunningEast.push(GetBMPData(runningBe5));
[Embed(source="../assets/horse/running se0005.png")]
var runningCse5:Class;
var runningBse5:Bitmap = new runningCse5();
RunningSouthEast.push(GetBMPData(runningBse5));
[Embed(source="../assets/horse/running s0005.png")]
var runningCs5:Class;
var runningBs5:Bitmap = new runningCs5();
RunningSouth.push(GetBMPData(runningBs5));
[Embed(source="../assets/horse/running sw0005.png")]
var runningCsw5:Class;
var runningBsw5:Bitmap = new runningCsw5();
RunningSouthWest.push(GetBMPData(runningBsw5));
[Embed(source="../assets/horse/running w0005.png")]
var runningCw5:Class;
var runningBw5:Bitmap = new runningCw5();
RunningWest.push(GetBMPData(runningBw5));
[Embed(source="../assets/horse/running nw0005.png")]
var runningCnw5:Class;
var runningBnw5:Bitmap = new runningCnw5();
RunningNorthWest.push(GetBMPData(runningBnw5));
[Embed(source="../assets/horse/running n0005.png")]
var runningCn5:Class;
var runningBn5:Bitmap = new runningCn5();
RunningNorth.push(GetBMPData(runningBn5));
[Embed(source="../assets/horse/running ne0005.png")]
var runningCne5:Class;
var runningBne5:Bitmap = new runningCne5();
RunningNorthEast.push(GetBMPData(runningBne5));
[Embed(source="../assets/horse/running e0006.png")]
var runningCe6:Class;
var runningBe6:Bitmap = new runningCe6();
RunningEast.push(GetBMPData(runningBe6));
[Embed(source="../assets/horse/running se0006.png")]
var runningCse6:Class;
var runningBse6:Bitmap = new runningCse6();
RunningSouthEast.push(GetBMPData(runningBse6));
[Embed(source="../assets/horse/running s0006.png")]
var runningCs6:Class;
var runningBs6:Bitmap = new runningCs6();
RunningSouth.push(GetBMPData(runningBs6));
[Embed(source="../assets/horse/running sw0006.png")]
var runningCsw6:Class;
var runningBsw6:Bitmap = new runningCsw6();
RunningSouthWest.push(GetBMPData(runningBsw6));
[Embed(source="../assets/horse/running w0006.png")]
var runningCw6:Class;
var runningBw6:Bitmap = new runningCw6();
RunningWest.push(GetBMPData(runningBw6));
[Embed(source="../assets/horse/running nw0006.png")]
var runningCnw6:Class;
var runningBnw6:Bitmap = new runningCnw6();
RunningNorthWest.push(GetBMPData(runningBnw6));
[Embed(source="../assets/horse/running n0006.png")]
var runningCn6:Class;
var runningBn6:Bitmap = new runningCn6();
RunningNorth.push(GetBMPData(runningBn6));
[Embed(source="../assets/horse/running ne0006.png")]
var runningCne6:Class;
var runningBne6:Bitmap = new runningCne6();
RunningNorthEast.push(GetBMPData(runningBne6));
[Embed(source="../assets/horse/running e0007.png")]
var runningCe7:Class;
var runningBe7:Bitmap = new runningCe7();
RunningEast.push(GetBMPData(runningBe7));
[Embed(source="../assets/horse/running se0007.png")]
var runningCse7:Class;
var runningBse7:Bitmap = new runningCse7();
RunningSouthEast.push(GetBMPData(runningBse7));
[Embed(source="../assets/horse/running s0007.png")]
var runningCs7:Class;
var runningBs7:Bitmap = new runningCs7();
RunningSouth.push(GetBMPData(runningBs7));
[Embed(source="../assets/horse/running sw0007.png")]
var runningCsw7:Class;
var runningBsw7:Bitmap = new runningCsw7();
RunningSouthWest.push(GetBMPData(runningBsw7));
[Embed(source="../assets/horse/running w0007.png")]
var runningCw7:Class;
var runningBw7:Bitmap = new runningCw7();
RunningWest.push(GetBMPData(runningBw7));
[Embed(source="../assets/horse/running nw0007.png")]
var runningCnw7:Class;
var runningBnw7:Bitmap = new runningCnw7();
RunningNorthWest.push(GetBMPData(runningBnw7));
[Embed(source="../assets/horse/running n0007.png")]
var runningCn7:Class;
var runningBn7:Bitmap = new runningCn7();
RunningNorth.push(GetBMPData(runningBn7));
[Embed(source="../assets/horse/running ne0007.png")]
var runningCne7:Class;
var runningBne7:Bitmap = new runningCne7();
RunningNorthEast.push(GetBMPData(runningBne7));
[Embed(source="../assets/horse/running e0008.png")]
var runningCe8:Class;
var runningBe8:Bitmap = new runningCe8();
RunningEast.push(GetBMPData(runningBe8));
[Embed(source="../assets/horse/running se0008.png")]
var runningCse8:Class;
var runningBse8:Bitmap = new runningCse8();
RunningSouthEast.push(GetBMPData(runningBse8));
[Embed(source="../assets/horse/running s0008.png")]
var runningCs8:Class;
var runningBs8:Bitmap = new runningCs8();
RunningSouth.push(GetBMPData(runningBs8));
[Embed(source="../assets/horse/running sw0008.png")]
var runningCsw8:Class;
var runningBsw8:Bitmap = new runningCsw8();
RunningSouthWest.push(GetBMPData(runningBsw8));
[Embed(source="../assets/horse/running w0008.png")]
var runningCw8:Class;
var runningBw8:Bitmap = new runningCw8();
RunningWest.push(GetBMPData(runningBw8));
[Embed(source="../assets/horse/running nw0008.png")]
var runningCnw8:Class;
var runningBnw8:Bitmap = new runningCnw8();
RunningNorthWest.push(GetBMPData(runningBnw8));
[Embed(source="../assets/horse/running n0008.png")]
var runningCn8:Class;
var runningBn8:Bitmap = new runningCn8();
RunningNorth.push(GetBMPData(runningBn8));
[Embed(source="../assets/horse/running ne0008.png")]
var runningCne8:Class;
var runningBne8:Bitmap = new runningCne8();
RunningNorthEast.push(GetBMPData(runningBne8));
[Embed(source="../assets/horse/running e0009.png")]
var runningCe9:Class;
var runningBe9:Bitmap = new runningCe9();
RunningEast.push(GetBMPData(runningBe9));
[Embed(source="../assets/horse/running se0009.png")]
var runningCse9:Class;
var runningBse9:Bitmap = new runningCse9();
RunningSouthEast.push(GetBMPData(runningBse9));
[Embed(source="../assets/horse/running s0009.png")]
var runningCs9:Class;
var runningBs9:Bitmap = new runningCs9();
RunningSouth.push(GetBMPData(runningBs9));
[Embed(source="../assets/horse/running sw0009.png")]
var runningCsw9:Class;
var runningBsw9:Bitmap = new runningCsw9();
RunningSouthWest.push(GetBMPData(runningBsw9));
[Embed(source="../assets/horse/running w0009.png")]
var runningCw9:Class;
var runningBw9:Bitmap = new runningCw9();
RunningWest.push(GetBMPData(runningBw9));
[Embed(source="../assets/horse/running nw0009.png")]
var runningCnw9:Class;
var runningBnw9:Bitmap = new runningCnw9();
RunningNorthWest.push(GetBMPData(runningBnw9));
[Embed(source="../assets/horse/running n0009.png")]
var runningCn9:Class;
var runningBn9:Bitmap = new runningCn9();
RunningNorth.push(GetBMPData(runningBn9));
[Embed(source="../assets/horse/running ne0009.png")]
var runningCne9:Class;
var runningBne9:Bitmap = new runningCne9();
RunningNorthEast.push(GetBMPData(runningBne9));
[Embed(source="../assets/horse/running e0010.png")]
var runningCe10:Class;
var runningBe10:Bitmap = new runningCe10();
RunningEast.push(GetBMPData(runningBe10));
[Embed(source="../assets/horse/running se0010.png")]
var runningCse10:Class;
var runningBse10:Bitmap = new runningCse10();
RunningSouthEast.push(GetBMPData(runningBse10));
[Embed(source="../assets/horse/running s0010.png")]
var runningCs10:Class;
var runningBs10:Bitmap = new runningCs10();
RunningSouth.push(GetBMPData(runningBs10));
[Embed(source="../assets/horse/running sw0010.png")]
var runningCsw10:Class;
var runningBsw10:Bitmap = new runningCsw10();
RunningSouthWest.push(GetBMPData(runningBsw10));
[Embed(source="../assets/horse/running w0010.png")]
var runningCw10:Class;
var runningBw10:Bitmap = new runningCw10();
RunningWest.push(GetBMPData(runningBw10));
[Embed(source="../assets/horse/running nw0010.png")]
var runningCnw10:Class;
var runningBnw10:Bitmap = new runningCnw10();
RunningNorthWest.push(GetBMPData(runningBnw10));
[Embed(source="../assets/horse/running n0010.png")]
var runningCn10:Class;
var runningBn10:Bitmap = new runningCn10();
RunningNorth.push(GetBMPData(runningBn10));
[Embed(source="../assets/horse/running ne0010.png")]
var runningCne10:Class;
var runningBne10:Bitmap = new runningCne10();
RunningNorthEast.push(GetBMPData(runningBne10));
[Embed(source="../assets/horse/running e0011.png")]
var runningCe11:Class;
var runningBe11:Bitmap = new runningCe11();
RunningEast.push(GetBMPData(runningBe11));
[Embed(source="../assets/horse/running se0011.png")]
var runningCse11:Class;
var runningBse11:Bitmap = new runningCse11();
RunningSouthEast.push(GetBMPData(runningBse11));
[Embed(source="../assets/horse/running s0011.png")]
var runningCs11:Class;
var runningBs11:Bitmap = new runningCs11();
RunningSouth.push(GetBMPData(runningBs11));
[Embed(source="../assets/horse/running sw0011.png")]
var runningCsw11:Class;
var runningBsw11:Bitmap = new runningCsw11();
RunningSouthWest.push(GetBMPData(runningBsw11));
[Embed(source="../assets/horse/running w0011.png")]
var runningCw11:Class;
var runningBw11:Bitmap = new runningCw11();
RunningWest.push(GetBMPData(runningBw11));
[Embed(source="../assets/horse/running nw0011.png")]
var runningCnw11:Class;
var runningBnw11:Bitmap = new runningCnw11();
RunningNorthWest.push(GetBMPData(runningBnw11));
[Embed(source="../assets/horse/running n0011.png")]
var runningCn11:Class;
var runningBn11:Bitmap = new runningCn11();
RunningNorth.push(GetBMPData(runningBn11));
[Embed(source="../assets/horse/running ne0011.png")]
var runningCne11:Class;
var runningBne11:Bitmap = new runningCne11();
RunningNorthEast.push(GetBMPData(runningBne11));


		}
		
	}
	
}