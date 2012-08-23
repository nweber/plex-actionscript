package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Season;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IItemListParser
	{
		function parse(value:Object):Array;
	}
}