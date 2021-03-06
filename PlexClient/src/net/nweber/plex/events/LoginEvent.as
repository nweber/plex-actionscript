package net.nweber.plex.events
{
	import flash.events.Event;
	
	public class LoginEvent extends Event
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		public static const EXECUTE:String = "executeLogin";
		public static const COMPLETE:String = "loginComplete";
		public static const ERROR:String = "loginError";
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		public var item:Object;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new LoginEvent(this.type, this.item, this.bubbles, this.cancelable);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function LoginEvent(type:String, item:Object=null, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			
			this.item = item;
		}
	}
}