package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.Server;

	public interface IServersParser
	{
		function parse(value:Object):Server;
	}
}