package net.nweber.plex.valueObjects
{
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class Server
	{
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		private var _name:String;
		private var _remoteAddress:String;
		private var _localAddress:String;
		private var _port:String;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		public function get name():String {
			return _name;
		}
		
		public function set name(value:String):void {
			_name = value;
		}
		
		public function get remoteAddress():String {
			return _remoteAddress;
		}
		
		public function set remoteAddress(value:String):void {
			_remoteAddress = value;
		}
		
		public function get localAddress():String {
			return _localAddress;
		}
		
		public function set localAddress(value:String):void {
			_localAddress = value;
		}
		
		public function get port():String {
			return _port;
		}
		
		public function set port(value:String):void {
			_port = value;
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function Server(name:String=null, remoteAddress:String=null, localAddress:String=null, port:String=null) {
			this.name = name;
			this.remoteAddress = remoteAddress;
			this.localAddress = localAddress;
			this.port = port;
		}
	}
}