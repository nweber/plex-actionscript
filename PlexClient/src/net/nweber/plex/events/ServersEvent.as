package net.nweber.plex.events
{
	import flash.events.Event;
	
	import net.nweber.plex.valueObjects.Server;
	
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
		//  Properties
		//
		//----------------------------------------
		
		public var server:Server;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new ServersEvent(this.type, this.server, this.bubbles, this.cancelable);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function ServersEvent(type:String, server:Server=null, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			
			this.server = server;
		}
	}
}