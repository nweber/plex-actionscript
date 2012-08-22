package net.nweber.plex.valueObjects
{
	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Part
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------

		private var _key:String;

		public function get key():String {
			return _key;
		}

		public function set key(value:String):void {
			_key = value;
		}

		private var _duration:Number;

		public function get duration():Number {
			return _duration;
		}

		public function set duration(value:Number):void {
			_duration = value;
		}

		private var _file:String;

		public function get file():String {
			return _file;
		}

		public function set file(value:String):void {
			_file = value;
		}

		private var _size:Number;

		public function get size():Number {
			return _size;
		}

		public function set size(value:Number):void {
			_size = value;
		}

		private var _container:String;

		public function get container():String {
			return _container;
		}

		public function set container(value:String):void {
			_container = value;
		}

		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------

		public function Part() {

		}
	}
}
