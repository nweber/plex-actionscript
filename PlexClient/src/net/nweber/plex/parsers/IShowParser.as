package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Show;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IShowParser
	{
		function parse(value:Object):Show;
	}
}