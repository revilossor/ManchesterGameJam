package ;
import org.flixel.FlxG;
import org.flixel.FlxGroup;

/**
 * ...
 * @author Oliver Ross
 */
class MarbleManager extends FlxGroup
{
	public var _allMarbles(default, default):FlxGroup;
	private var t:UInt;
	
	public function new() 
	{
		super();
		_allMarbles = new FlxGroup();
		add(_allMarbles);
		t = 0;
	}
	override public function update():Void
	{
		super.update();
		if (t++ == 160) {
			_allMarbles.add(new Marble(FlxG.width / 2, -100));
			t = 0;
		}
	}
	
	
}