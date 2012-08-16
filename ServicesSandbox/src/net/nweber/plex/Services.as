package net.nweber.plex
{
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class Services
	{
		//----------------------------------------
		//
		// Servers
		//
		//----------------------------------------
		
		private static const USE_LOCAL:Boolean = true;
		private static const LOCAL:String = "http://localhost:8070/";
		private static const REMOTE:String = "http://www.nweber.net/";
		
		//----------------------------------------
		//
		// URL
		//
		//----------------------------------------
		
		private static const PARAMETERS:String = "?";
		private static const PARAM_VALUE:String = "=";
		private static const PARAM_CONCAT:String = "&";
		
		//----------------------------------------
		//
		// General
		//
		//----------------------------------------
		
		public static const TOKEN_PARAM:String = "token";
		public static const SERVER_ADDRESS_PARAM:String = "server_ip";
		public static const SERVER_PORT_PARAM:String = "server_port";
		
		//----------------------------------------
		//
		// Login
		//
		//----------------------------------------
		
		public static const LOGIN:String = "plex/services/login.php";
		public static const LOGIN_PARAM_AUTH:String = "auth";
		
		//----------------------------------------
		//
		// Servers
		//
		//----------------------------------------
		
		public static const GET_SERVERS:String = "plex/services/servers.php";
		
		//----------------------------------------
		//
		// Sections
		//
		//----------------------------------------
		
		public static const GET_SECTIONS:String = "plex/services/sections.php";
		public static const GET_SECTION_CONTENTS:String = "plex/services/section_contents.php";
		public static const SECTION_PARAM_ID:String = "sectionID";
		
		//----------------------------------------
		//
		// xxxx
		//
		//----------------------------------------
		
		
		
		//----------------------------------------
		//
		// xxxx
		//
		//----------------------------------------
		
		
		
		//----------------------------------------
		//
		// xxxx
		//
		//----------------------------------------
		
		
		
		//----------------------------------------
		//
		// xxxx
		//
		//----------------------------------------
		
		
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public static function buildServiceURL(fragment:String, params:Vector.<QueryParam>=null):String {
			var url:String = USE_LOCAL ? LOCAL : REMOTE;
			url += fragment;
			
			if (params && params.length > 0) {
				url += PARAMETERS;
				var p:QueryParam;
				var len:int = params.length;
				for (var i:int = 0; i < len; i++) {
					if (i > 0) url += PARAM_CONCAT;
					p = params[i];
					url += p.name + PARAM_VALUE + p.value;
				}
			}
			
			return url;
		}
	}
}