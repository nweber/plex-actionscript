package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Artist;

	public interface IArtistSectionParser
	{
		function parse(value:Object):Vector.<Artist>;
	}
}