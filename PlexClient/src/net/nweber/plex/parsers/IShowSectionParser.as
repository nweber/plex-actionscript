package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Show;

	public interface IShowSectionParser
	{
		function parse(value:Object):Vector.<Show>;
	}
}