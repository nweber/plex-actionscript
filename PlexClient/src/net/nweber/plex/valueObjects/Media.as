package net.nweber.plex.valueObjects
{

	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Media
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------

		private var _id:String;

		public function get id():String {
			return _id;
		}

		public function set id(value:String):void {
			_id = value;
		}

		private var _duration:Number;

		public function get duration():Number {
			return _duration;
		}

		public function set duration(value:Number):void {
			_duration = value;
		}

		private var _bitrate:Number;

		public function get bitrate():Number {
			return _bitrate;
		}

		public function set bitrate(value:Number):void {
			_bitrate = value;
		}

		private var _width:Number;

		public function get width():Number {
			return _width;
		}

		public function set width(value:Number):void {
			_width = value;
		}

		private var _height:Number;

		public function get height():Number {
			return _height;
		}

		public function set height(value:Number):void {
			_height = value;
		}

		private var _aspectRatio:Number;

		public function get aspectRatio():Number {
			return _aspectRatio;
		}

		public function set aspectRatio(value:Number):void {
			_aspectRatio = value;
		}

		private var _audioChannels:Number;

		public function get audioChannels():Number {
			return _audioChannels;
		}

		public function set audioChannels(value:Number):void {
			_audioChannels = value;
		}

		private var _audioCodec:String;

		public function get audioCodec():String {
			return _audioCodec;
		}

		public function set audioCodec(value:String):void {
			_audioCodec = value;
		}

		private var _videoCodec:String;

		public function get videoCodec():String {
			return _videoCodec;
		}

		public function set videoCodec(value:String):void {
			_videoCodec = value;
		}

		private var _videoResolution:String;

		public function get videoResolution():String {
			return _videoResolution;
		}

		public function set videoResolution(value:String):void {
			_videoResolution = value;
		}

		private var _container:String;

		public function get container():String {
			return _container;
		}

		public function set container(value:String):void {
			_container = value;
		}

		private var _videoFrameRate:String;

		public function get videoFrameRate():String {
			return _videoFrameRate;
		}

		public function set videoFrameRate(value:String):void {
			_videoFrameRate = value;
		}
		
		private var _parts:Vector.<Part>;

		public function get parts():Vector.<Part> {
			return _parts;
		}

		public function set parts(value:Vector.<Part>):void {
			_parts = value;
		}


		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------

		public function Media() {

		}
	}
}
