package net.nweber.plex.events
{
	import flash.events.Event;
	
	public class ServersEvent extends Event
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		public static const COMPLETE:String = "serversComplete";
		public static const ERROR:String = "serversError";
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new ServersEvent(this.type, this.bubbles, this.cancelable);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function ServersEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
		}
	}
}