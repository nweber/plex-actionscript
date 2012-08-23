package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Stream;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IStreamParser
	{
		function parse(value:Object):Stream;
	}
}