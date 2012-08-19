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
		
		public var username:String;
		public var password:String;
		public var remember:Boolean;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new LoginEvent(this.type, this.username, this.password, this.remember, this.bubbles, this.cancelable);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function LoginEvent(type:String, username:String=null, password:String=null, remember:Boolean=false, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			
			this.username = username;
			this.password = password;
			this.remember = remember;
		}
	}
}