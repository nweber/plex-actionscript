package net.nweber.plex.services.remote
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import net.nweber.plex.events.LoginEvent;
	import net.nweber.plex.parsers.IUserParser;
	import net.nweber.plex.services.ILoginService;
	import net.nweber.plex.valueObjects.QueryParam;
	import net.nweber.plex.valueObjects.User;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * A proxy to the https://my.plexapp.com/ service.
	 * <p>Because of cross-domain issues the login service is blocked from Flash
	 * and JavaScript.  To get around this issue there's a php script
	 * at http://www.nweber.net/plex/services/login.php that performs the
	 * login and echoes the XML.</p>
	 * <p>The actual username and password are not sent to the server.  Instead
	 * the base64 encoded string is sent.</p>
	 * 
	 * @author Nathan Weber
	 */	
	public class ProxyLoginService extends Actor implements ILoginService
	{
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:IUserParser;
		
		private var loader:URLLoader;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		public function execute(credentials:String):void {
			var params:Vector.<QueryParam> = new Vector.<QueryParam>();
			params.push(new QueryParam(Services.LOGIN_PARAM_AUTH, credentials));
			
			var commandURL:String = Services.buildServiceURL(Services.LOGIN, params);
			
			var req:URLRequest = new URLRequest(commandURL);
			
			init();
			loader.load(req);
		}
		
		//----------------------------------------
		//
		//  Internal Methods
		//
		//----------------------------------------
		
		protected function init():void {
			loader.addEventListener(Event.COMPLETE, onComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onError);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
		}
		
		protected function clear():void {
			loader.removeEventListener(Event.COMPLETE, onComplete);
			loader.removeEventListener(IOErrorEvent.IO_ERROR, onError);
			loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onComplete(event:Event):void {
			clear();
			
			try {
				var user:User = parser.parse(loader.data);
				if (!user)
					throw new Error("No user object.");
			}
			catch (err:Error) {
				throw new Error("Error parsing user XML.");
			}
			
			dispatch(new LoginEvent(LoginEvent.COMPLETE, user));
		}
		
		private function onError(event:Event):void {
			clear();
			dispatch(new LoginEvent(LoginEvent.ERROR));
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function ProxyLoginService() {
			loader = new URLLoader();
		}
	}
}