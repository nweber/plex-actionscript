package net.nweber.plex.valueObjects
{
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class LoginInfo
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		public var username:String;
		public var password:String;
		public var remember:Boolean;
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function LoginInfo(username:String=null, password:String=null, remember:Boolean=false) {
			this.username = username;
			this.password = password;
			this.remember = remember;
		}
	}
}