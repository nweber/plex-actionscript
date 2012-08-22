package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Movie;

	public interface IMovieSectionParser
	{
		function parse(value:Object):Vector.<Movie>;
	}
}