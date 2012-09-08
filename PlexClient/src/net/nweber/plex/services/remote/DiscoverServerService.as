package net.nweber.plex.services.remote
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import net.nweber.plex.events.DiscoverServerEvent;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.services.IDiscoverServerService;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class DiscoverServerService extends Actor implements IDiscoverServerService
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		private const TEST_FRAGMENT:String = "library/sections?X-Plex-Token=";
		
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		private var loader:URLLoader;
		
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		[Inject]
		public var model:PlexModel;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(token:String):void {
			var url:String = "http://" + model.server.localAddress + ":" + model.server.port + "/" + TEST_FRAGMENT + token;
			loader = new URLLoader(new URLRequest(url));
			loader.addEventListener(Event.COMPLETE, onComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onError);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
		}
		
		//----------------------------------------
		//
		// Handlers
		//
		//----------------------------------------
		
		private function onComplete(event:Event):void {
			dispatch(new DiscoverServerEvent(DiscoverServerEvent.LOCAL_AVAILABLE));
		}
		
		private function onError(event:Event):void {
			dispatch(new DiscoverServerEvent(DiscoverServerEvent.REMOTE_AVAILABLE));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function DiscoverServerService() {
			
		}
	}
}