package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IServersParser;
	import net.nweber.plex.valueObjects.Server;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class MyPlexServersParser implements IServersParser
	{
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		/*
		<MediaContainer friendlyName="myPlex" identifier="com.plexapp.plugins.myplex" machineIdentifier="8650bb566e2cff308b97adsasdcff387bf8506099" size="2">
			<Server name="Test Server" address="34.26.318.196" port="32400" host="34.26.318.196" localAddresses="192.168.0.1" machineIdentifier="43df87bew3rnc999e3f51ede750e1672a0fdf958" createdAt="1343860761" updatedAt="1345278111" owned="1"/>
		</MediaContainer>
		*/
		
		public function parse(value:Object):Server {
			var data:XML = new XML(value);
			var list:XMLList = data..Server;
			
			var ownedServer:XML;
			for each (var x:XML in list) {
				if (x.@owned == "1") {
					ownedServer = x;
					break;
				}
			}
			
			if (!ownedServer) {
				// TODO : Expose error to user.
				throw new Error("No servers owned!");
			}
			else {
				var name:String = ownedServer.@name;
				var remoteAddress:String = ownedServer.@address;
				var localAddress:String = ownedServer.@localAddresses;
				var port:String = ownedServer.@port;;
			}
			
			return new Server(name, remoteAddress, localAddress, port);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function MyPlexServersParser() {
			
		}
	}
}