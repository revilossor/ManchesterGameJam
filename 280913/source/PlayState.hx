package ;
import org.flixel.FlxG;
import org.flixel.FlxState;

/**
 * ...
 * @author Oliver Ross
 */
class PlayState extends FlxState
{
	private var _player:Player;
	private var _walls:ScrollingWallManager;
	private var _marbles:MarbleManager;
	
	public function new() 
	{
		super();
	}
	override public function create():Void
	{
		super.create();
		FlxG.bgColor = 0xffff00ff;
		add(new Background());
		_walls = new ScrollingWallManager();
		add(_walls);
		_player = new Player(100, 10);
		add(_player);
		_marbles = new MarbleManager();
		add(_marbles);
	}
	override public function update():Void
	{
		super.update();
		doCollision();
		if (_player.y > 1700) {
			FlxG.fade(0xffff0000, 1, false, gover);
		}
	}
	private function gover():Void
	{
		FlxG.switchState(new GameOverState());
	}
	private function doCollision():Void
	{
		FlxG.collide(_player, _walls);
		FlxG.overlap(_player, _marbles._allMarbles, _player.hitMarble);
	}
	
	
	
	
}