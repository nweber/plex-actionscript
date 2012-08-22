package net.nweber.plex.services.stub
{
	import net.nweber.plex.events.ServersEvent;
	import net.nweber.plex.parsers.IServersParser;
	import net.nweber.plex.services.IServersService;
	import net.nweber.plex.valueObjects.Server;
	
	import org.robotlegs.mvcs.Actor;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StubServersService extends Actor implements IServersService
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		private static const STUB_DATA:XML = <MediaContainer friendlyName="myPlex" identifier="com.plexapp.plugins.myplex" machineIdentifier="8650bb566e2cff308b970ba17cff387bf8506099" size="1">
											   <Server name="Test Server" address="92.33.153.285" port="32400" host="92.33.153.285" localAddresses="192.168.1.101" machineIdentifier="43df87bf1e86c999e3f51ede750e1672a0fdf958" createdAt="1343860761" updatedAt="1345538942" owned="1"/>
											 </MediaContainer>;
		
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:IServersParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(credentials:String):void {
			var server:Server = parser.parse(STUB_DATA);
			dispatch(new ServersEvent(ServersEvent.COMPLETE, server));
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