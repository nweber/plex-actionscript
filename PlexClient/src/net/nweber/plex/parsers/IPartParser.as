package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Part;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IPartParser
	{
		function parse(value:Object):Part;
	}
}