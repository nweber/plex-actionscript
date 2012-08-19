package net.nweber.plex.services.remote
{
	import net.nweber.plex.valueObjects.QueryParam;

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
		public static const PSM_TOKEN_PARAM:String = "X-Plex-Token";
		
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
		// Public Methods
		//
		//----------------------------------------
		
		public static function buildServiceURL(fragment:String, params:Vector.<QueryParam>=null):String {
			var url:String = REMOTE;
			url += fragment;
			
			url = appendParams(url, params);
			
			return url;
		}
		
		public static function appendParams(url:String, params:Vector.<QueryParam>=null):String {
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