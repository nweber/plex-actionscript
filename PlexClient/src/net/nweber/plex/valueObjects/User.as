package net.nweber.plex.valueObjects
{
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class User
	{
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		private var _username:String;
		private var _token:String;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		public function get username():String {
			return _username;
		}
		
		public function set username(value:String):void {
			_username = value;
		}
		
		public function get token():String {
			return _token;
		}
		
		public function set token(value:String):void {
			_token = value;
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function User(username:String=null, token:String=null) {
			this.username = username;
			this.token = token;
		}
	}
}