package net.nweber.plex.events
{
	import flash.events.Event;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class DiscoverServerEvent extends Event
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		public static const LOCAL_AVAILABLE:String = "localAvailable";
		public static const REMOTE_AVAILABLE:String = "remoteAvailable";
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new DiscoverServerEvent(this.type, this.bubbles, this.cancelable);
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function DiscoverServerEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
		}
	}
}