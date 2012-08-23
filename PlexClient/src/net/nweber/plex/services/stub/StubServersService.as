package net.nweber.plex.services.stub
{
	import net.nweber.plex.events.ServersEvent;
	import net.nweber.plex.parsers.IServersParser;
	import net.nweber.plex.services.IServersService;
	import net.nweber.plex.valueObjects.Server;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StubServersService extends BaseStubService implements IServersService
	{
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:IServersParser;
		
		override protected function get stubDataURL():String {
			return "stub/servers.xml";
		}
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(token:String):void {
			doLoad();
		}
		
		override protected function doParse(data:Object):void {
			var server:Server = parser.parse(data);
			dispatch(new ServersEvent(ServersEvent.COMPLETE, server));
		}
		
		override protected function doError():void {
			dispatch(new ServersEvent(ServersEvent.ERROR));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function StubServersService() {
			
		}
	}
}