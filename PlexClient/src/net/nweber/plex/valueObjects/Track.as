package net.nweber.plex.valueObjects
{
	[Bindable]
	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Track
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

		private var _titleSort:String;

		public function get titleSort():String {
			return _titleSort;
		}

		public function set titleSort(value:String):void {
			_titleSort = value;
		}

		private var _parentKey:String;

		public function get parentKey():String {
			return _parentKey;
		}

		public function set parentKey(value:String):void {
			_parentKey = value;
		}

		private var _originalTitle:String;

		public function get originalTitle():String {
			return _originalTitle;
		}

		public function set originalTitle(value:String):void {
			_originalTitle = value;
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

		private var _duration:Number;

		public function get duration():Number {
			return _duration;
		}

		public function set duration(value:Number):void {
			_duration = value;
		}

		private var _medias:Vector.<Media>;

		public function get medias():Vector.<Media> {
			return _medias;
		}

		public function set medias(value:Vector.<Media>):void {
			_medias = value;
		}

		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------

		public function Track() {

		}
	}
}
