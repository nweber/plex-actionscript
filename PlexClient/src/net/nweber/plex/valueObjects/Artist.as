package net.nweber.plex.valueObjects
{
	[Bindable]
	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Artist
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------

		private var _ratingKey:String;

		public function get ratingKey():String {
			return _ratingKey;
		}

		public function set ratingKey(value:String):void {
			_ratingKey = value;
		}

		private var _key:String;

		public function get key():String {
			return _key;
		}

		public function set key(value:String):void {
			_key = value;
		}

		private var _title:String;

		public function get title():String {
			return _title;
		}

		public function set title(value:String):void {
			_title = value;
		}

		private var _titleSort:String;

		public function get titleSort():String {
			return _titleSort;
		}

		public function set titleSort(value:String):void {
			_titleSort = value;
		}

		private var _summary:String;

		public function get summary():String {
			return _summary;
		}

		public function set summary(value:String):void {
			_summary = value;
		}

		private var _index:int;

		public function get index():int {
			return _index;
		}

		public function set index(value:int):void {
			_index = value;
		}

		private var _thumb:String;

		public function get thumb():String {
			return _thumb;
		}

		public function set thumb(value:String):void {
			_thumb = value;
		}

		private var _art:String;

		public function get art():String {
			return _art;
		}

		public function set art(value:String):void {
			_art = value;
		}

		private var _genres:Vector.<String>;

		public function get genres():Vector.<String> {
			return _genres;
		}

		public function set genres(value:Vector.<String>):void {
			_genres = value;
		}

		private var _albums:Vector.<Album>;

		public function get albums():Vector.<Album> {
			return _albums;
		}

		public function set albums(value:Vector.<Album>):void {
			_albums = value;
		}

		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------

		public function Artist() {

		}
	}
}
