package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Section;

	public interface ISectionsParser
	{
		function parse(value:Object):Vector.<Section>;
	}
}