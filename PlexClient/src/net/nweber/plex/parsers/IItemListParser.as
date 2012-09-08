package net.nweber.plex.parsers
{
	import mx.collections.ArrayList;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public interface IItemListParser
	{
		function parse(value:Object):ArrayList;
	}
}