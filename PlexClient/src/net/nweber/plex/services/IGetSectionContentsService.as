package net.nweber.plex.services
{
	public interface IGetSectionContentsService
	{
		function execute(sectionKey:String, token:String):void;
	}
}