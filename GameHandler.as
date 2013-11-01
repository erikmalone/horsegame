package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import hudz.TempHud;
	
	/**
	 * ...
	 * @author E
	 */
	public class GameHandler extends Sprite 
	{
		private var mainGame:MainGame = new MainGame();
		private var mainHUD:TempHud = new TempHud();
		private var mainPlayAgain:PlayAgain = new PlayAgain();
		private var mainTitle:TitlePage = new TitlePage();
		private var tempDistance:int = 0;
		private var tempApples:int = 0;
		
		public function GameHandler() {
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(mainGame);
			addChild(mainHUD);
			addChild(mainPlayAgain);
			addChild(mainTitle);
			
			addEventListener("AppleCollected", appleCollected);
			addEventListener("DistanceUpdate", distanceUpdate);
			addEventListener("TimeUp", timeUp);
			
			addEventListener("PlayAgainClicked", PlayAgainClicked);
			addEventListener("GroundStart", GroundStart);
			addEventListener("GroundReady", GroundReady);
			
			mainPlayAgain.visible = false;
			mainGame.horse.visible = false;
			mainGame.extras.visible = false;
			mainHUD.visible = false;
			//Reset();
		}
		private function Reset():void {
			tempApples = 0;
			tempDistance = 0;
			mainHUD.UpdateAppleCount(tempApples);
			mainHUD.UpdateDistanceCount(tempDistance);
			mainHUD.UpdateTimer();
			mainGame.Start();
		}
		private function appleCollected(e:Event):void {
			tempApples++;
			mainHUD.UpdateAppleCount(tempApples);
		}
		private function distanceUpdate(e:Event):void {
			tempDistance++;
			mainHUD.UpdateDistanceCount(tempDistance);
		}
		private function timeUp(e:Event):void {
			mainGame.TimeUp();
			Main.finalScore = tempApples + tempDistance;
			mainPlayAgain.Reset();
		}
		private function PlayAgainClicked(e:Event):void {
			Reset();
		}
		private function GroundStart(e:Event):void {
			mainGame.ground.MoveUp();
		}
		private function GroundReady(e:Event):void {
			//AFTER TITLE SCREEN
			//Show PLAYAGAIN/INSTRUCTIONS
			mainPlayAgain.visible = true;
			mainGame.horse.visible = true;
			mainGame.extras.visible = true;
			mainHUD.visible = true;
			
		}
		
		
	}
	
}