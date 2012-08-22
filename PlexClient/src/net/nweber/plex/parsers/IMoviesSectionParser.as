package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Movie;

	public interface IMoviesSectionParser
	{
		function parse(value:Object):Vector.<Movie>;
	}
}