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
		
		private var _sections:Vector.<Section>;
		
		public function get sections():Vector.<Section> {
			return _sections;
		}
		
		public function set sections(value:Vector.<Section>):void {
			_sections = value;
		}
		
		private var _movies:Vector.<Movie>;
		
		public function get movies():Vector.<Movie> {
			return _movies;
		}
		
		public function set movies(value:Vector.<Movie>):void {
			_movies = value;
		}
		
		private var _shows:Vector.<Show>;
		
		public function get shows():Vector.<Show> {
			return _shows;
		}
		
		public function set shows(value:Vector.<Show>):void {
			_shows = value;
		}
		
		private var _artists:Vector.<Artist>;
		
		public function get artists():Vector.<Artist> {
			return _artists;
		}
		
		public function set artists(value:Vector.<Artist>):void {
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