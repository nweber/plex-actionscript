package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Artist;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IArtistParser
	{
		function parse(value:Object):Artist;
	}
}