package net.nweber.plex.services.remote
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import net.nweber.plex.events.ServersEvent;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.parsers.IServersParser;
	import net.nweber.plex.services.IServersService;
	import net.nweber.plex.valueObjects.QueryParam;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * A proxy to the https://my.plexapp.com/ service.
	 * <p>Because of cross-domain issues the get servers service is blocked from Flash
	 * and JavaScript.  To get around this issue there's a php script
	 * at http://www.nweber.net/plex/services/login.php that performs the
	 * login and echoes the XML.</p>
	 * 
	 * @author Nathan Weber
	 */	
	public class ProxyServersService extends Actor implements IServersService
	{
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		[Inject]
		public var model:PlexModel;
		
		[Inject]
		public var parser:IServersParser;
		
		private var loader:URLLoader;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		public function execute(token:String):void {
			var params:Vector.<QueryParam> = new Vector.<QueryParam>();
			params.push(new QueryParam(Services.TOKEN_PARAM, token));
			
			var commandURL:String = Services.buildServiceURL(Services.GET_SERVERS, params);
			
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
			
			model.server = parser.parse(loader.data);
			
			dispatch(new ServersEvent(ServersEvent.COMPLETE));
		}
		
		private function onError(event:Event):void {
			clear();
			dispatch(new ServersEvent(ServersEvent.ERROR));
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function ProxyServersService() {
			loader = new URLLoader();
		}
	}
}