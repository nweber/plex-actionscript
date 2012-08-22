package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Media;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IMediaParser
	{
		function parse(value:Object):Media;
	}
}