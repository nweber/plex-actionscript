package net.nweber.plex.parsers
{
	import net.nweber.plex.valueObjects.User;

	public interface IUserParser
	{
		function parse(value:Object):User;
	}
}