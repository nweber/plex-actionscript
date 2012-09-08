package net.nweber.plex.valueObjects
{
	[Bindable]
	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Album
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

		private var _parentRatingKey:String;

		public function get parentRatingKey():String {
			return _parentRatingKey;
		}

		public function set parentRatingKey(value:String):void {
			_parentRatingKey = value;
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

		private var _parentKey:String;

		public function get parentKey():String {
			return _parentKey;
		}

		public function set parentKey(value:String):void {
			_parentKey = value;
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

		private var _year:int;

		public function get year():int {
			return _year;
		}

		public function set year(value:int):void {
			_year = value;
		}

		private var _thumb:String;

		public function get thumb():String {
			return _thumb;
		}

		public function set thumb(value:String):void {
			_thumb = value;
		}

		private var _leafCount:int;

		public function get leafCount():int {
			return _leafCount;
		}

		public function set leafCount(value:int):void {
			_leafCount = value;
		}

		private var _viewedLeafCount:int;

		public function get viewedLeafCount():int {
			return _viewedLeafCount;
		}

		public function set viewedLeafCount(value:int):void {
			_viewedLeafCount = value;
		}

		private var _genres:Vector.<String>;

		public function get genres():Vector.<String> {
			return _genres;
		}

		public function set genres(value:Vector.<String>):void {
			_genres = value;
		}

		private var _tracks:Vector.<Track>;

		public function get tracks():Vector.<Track> {
			return _tracks;
		}

		public function set tracks(value:Vector.<Track>):void {
			_tracks = value;
		}

		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------

		public function Album() {

		}
	}
}
