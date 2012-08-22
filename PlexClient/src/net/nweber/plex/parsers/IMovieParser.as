package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Movie;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IMovieParser
	{
		function parse(value:Object):Movie;
	}
}