package net.nweber.plex.model
{
	import net.nweber.plex.valueObjects.Artist;
	import net.nweber.plex.valueObjects.Movie;
	import net.nweber.plex.valueObjects.Section;
	import net.nweber.plex.valueObjects.Server;
	import net.nweber.plex.valueObjects.Show;
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
		private var _localAvailable:Boolean = false;
		private var _sections:Vector.<Section>;
		private var _movies:Vector.<Movie>;
		private var _shows:Vector.<Show>;
		private var _artist:Vector.<Artist>;
		
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
		
		public function get localAvailable():Boolean {
			return _localAvailable;
		}
		
		public function set localAvailable(value:Boolean):void {
			_localAvailable = value;
		}
		
		public function get serverAddress():String {
			if (!server)
				return null;
			
			return "http://" + (localAvailable ? server.localAddress : server.remoteAddress) + ":" + server.port;
		}
		
		public function get sections():Vector.<Section> {
			return _sections;
		}
		
		public function set sections(value:Vector.<Section>):void {
			_sections = value;
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