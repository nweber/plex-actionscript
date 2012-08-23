package net.nweber.plex.valueObjects
{
	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Stream
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------

		public var id:String;
		public var streamType:String;
		public var codec:String;
		public var index:int;
		public var bitrate:Number;
		public var duration:Number;
		public var frameRate:Number;
		public var gmc:String;
		public var height:Number;
		public var level:Number;
		public var profile:String;
		public var qpel:Number;
		public var width:Number;

		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------

		public function Stream() {

		}
	}
}
