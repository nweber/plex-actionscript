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
		//  Variables
		//
		//----------------------------------------
		
		private var _title:String;
		private var _type:String;
		private var _key:String;
		private var _art:String;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		public function get title():String {
			return _title;
		}
		
		public function set title(value:String):void {
			_title = value;
		}
		
		public function get type():String {
			return _type;
		}
		
		public function set type(value:String):void {
			_type = value;
		}
		
		public function get key():String {
			return _key;
		}
		
		public function set key(value:String):void {
			_key = value;
		}
		
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
		
		public function Section(title:String=null, type:String=null, key:String=null, art:String=null) {
			this.title = title;
			this.type = type;
			this.key = key;
			this.art = art;
		}
	}
}