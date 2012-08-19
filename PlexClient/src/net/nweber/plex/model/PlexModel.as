package net.nweber.plex.model
{
	import net.nweber.plex.valueObjects.Server;
	import net.nweber.plex.valueObjects.User;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class PlexModel extends Actor
	{
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		private var _user:User;
		private var _server:Server;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		public function get user():User {
			return _user;
		}
		
		public function set user(value:User):void {
			_user = value;
		}
		
		public function get server():Server {
			return _server;
		}
		
		public function set server(value:Server):void {
			_server = value;
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function PlexModel() {
			super();
		}
	}
}