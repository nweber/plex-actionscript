package net.nweber.plex.model
{
	import mx.collections.ArrayList;
	
	import net.nweber.plex.valueObjects.Server;
	import net.nweber.plex.valueObjects.User;
	
	import org.robotlegs.mvcs.Actor;
	
	[Bindable]
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class PlexModel extends Actor
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		public static const MOVIES_KEY:String = "1";
		public static const SHOWS_KEY:String = "2";
		public static const MUSIC_KEY:String = "3";
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		private var _user:User;
		
		public function get user():User {
			return _user;
		}
		
		public function set user(value:User):void {
			_user = value;
		}
		
		private var _server:Server;
		
		public function get server():Server {
			return _server;
		}
		
		public function set server(value:Server):void {
			_server = value;
		}
		
		private var _localAvailable:Boolean = false;
		
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
		
		private var _sections:ArrayList;
		
		public function get sections():ArrayList {
			return _sections;
		}
		
		public function set sections(value:ArrayList):void {
			_sections = value;
		}
		
		private var _movies:ArrayList;
		
		public function get movies():ArrayList {
			return _movies;
		}
		
		public function set movies(value:ArrayList):void {
			_movies = value;
		}
		
		private var _shows:ArrayList;
		
		public function get shows():ArrayList {
			return _shows;
		}
		
		public function set shows(value:ArrayList):void {
			_shows = value;
		}
		
		private var _artists:ArrayList;
		
		public function get artists():ArrayList {
			return _artists;
		}
		
		public function set artists(value:ArrayList):void {
			_artists = value;
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