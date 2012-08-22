package net.nweber.plex.valueObjects
{

	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Section
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------

		private var _title:String;

		public function get title():String {
			return _title;
		}

		public function set title(value:String):void {
			_title = value;
		}

		private var _type:String;

		public function get type():String {
			return _type;
		}

		public function set type(value:String):void {
			_type = value;
		}

		private var _key:String;

		public function get key():String {
			return _key;
		}

		public function set key(value:String):void {
			_key = value;
		}

		private var _art:String;

		public function get art():String {
			return _art;
		}

		public function set art(value:String):void {
			_art = value;
		}

		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------

		public function Section(title:String = null, type:String = null, key:String = null, art:String = null) {
			this.title = title;
			this.type = type;
			this.key = key;
			this.art = art;
		}
	}
}
