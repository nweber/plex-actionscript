package net.nweber.plex.services.stub
{
	import net.nweber.plex.events.DiscoverServerEvent;
	import net.nweber.plex.services.IDiscoverServerService;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StubDiscoverServerService extends Actor implements IDiscoverServerService
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(token:String):void {
			dispatch(new DiscoverServerEvent(DiscoverServerEvent.REMOTE_AVAILABLE));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function StubDiscoverServerService() {
			
		}
	}
}