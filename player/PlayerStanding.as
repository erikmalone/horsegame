package player
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author E
	 */
	public class PlayerStanding extends Sprite 
	{
		private var StandingDirection:Array = new Array();
		
		public function PlayerStanding() {
			CreateData();
		}
		public function GetData(dir:String, num:int):BitmapData {
			var d:BitmapData;
			if (dir == "e") { d = StandingDirection[4]; }
			else if (dir == "se") { d = StandingDirection[5]; }
			else if (dir == "s") { d = StandingDirection[6]; }
			else if (dir == "sw") { d = StandingDirection[7]; }
			else if (dir == "w") { d = StandingDirection[0];}
			else if (dir == "nw") { d = StandingDirection[1]; }
			else if (dir == "n") { d = StandingDirection[2]; }
			else if (dir == "ne") { d = StandingDirection[3]; }
			return d;
		}
		private function GetBMPData(b:Bitmap):BitmapData {
			var d:BitmapData = new BitmapData(b.width, b.height, true, 0x00000000);
			d.draw(b);
			return d;
		}
		
		
		private function CreateData():void {
			[Embed(source = "../assets/horse/stopped0000.png")]
			var c0:Class;
			var b0:Bitmap = new c0();
			var d0:BitmapData = GetBMPData(b0);
			
			[Embed(source = "../assets/horse/stopped0001.png")]
			var c1:Class;
			var b1:Bitmap = new c1();
			var d1:BitmapData = GetBMPData(b1);
			
			[Embed(source = "../assets/horse/stopped0002.png")]
			var c2:Class;
			var b2:Bitmap = new c2();
			var d2:BitmapData = GetBMPData(b2);
			[Embed(source = "../assets/horse/stopped0003.png")]
			var c3:Class;
			var b3:Bitmap = new c3();
			var d3:BitmapData = GetBMPData(b3);
			[Embed(source = "../assets/horse/stopped0004.png")]
			var c4:Class;
			var b4:Bitmap = new c4();
			var d4:BitmapData = GetBMPData(b4);
			[Embed(source = "../assets/horse/stopped0005.png")]
			var c5:Class;
			var b5:Bitmap = new c5();
			var d5:BitmapData = GetBMPData(b5);
			[Embed(source = "../assets/horse/stopped0006.png")]
			var c6:Class;
			var b6:Bitmap = new c6();
			var d6:BitmapData = GetBMPData(b6);
			[Embed(source = "../assets/horse/stopped0007.png")]
			var c7:Class;
			var b7:Bitmap = new c7();
			var d7:BitmapData = GetBMPData(b7);
			StandingDirection.push(d0, d1, d2, d3, d4, d5, d6, d7);
			
			
		}
	}
	
}