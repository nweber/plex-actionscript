package net.nweber.plex.valueObjects
{
	[Bindable]
	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Episode
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

		private var _grandparentRatingKey:String;

		public function get grandparentRatingKey():String {
			return _grandparentRatingKey;
		}

		public function set grandparentRatingKey(value:String):void {
			_grandparentRatingKey = value;
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

		private var _grandparentKey:String;

		public function get grandparentKey():String {
			return _grandparentKey;
		}

		public function set grandparentKey(value:String):void {
			_grandparentKey = value;
		}

		private var _parentKey:String;

		public function get parentKey():String {
			return _parentKey;
		}

		public function set parentKey(value:String):void {
			_parentKey = value;
		}

		private var _grandparentTitle:String;

		public function get grandparentTitle():String {
			return _grandparentTitle;
		}

		public function set grandparentTitle(value:String):void {
			_grandparentTitle = value;
		}

		private var _contentRating:String;

		public function get contentRating():String {
			return _contentRating;
		}

		public function set contentRating(value:String):void {
			_contentRating = value;
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

		private var _parentIndex:int;

		public function get parentIndex():int {
			return _parentIndex;
		}

		public function set parentIndex(value:int):void {
			_parentIndex = value;
		}

		private var _rating:Number;

		public function get rating():Number {
			return _rating;
		}

		public function set rating(value:Number):void {
			_rating = value;
		}

		private var _viewCount:int;

		public function get viewCount():int {
			return _viewCount;
		}

		public function set viewCount(value:int):void {
			_viewCount = value;
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

		private var _art:String;

		public function get art():String {
			return _art;
		}

		public function set art(value:String):void {
			_art = value;
		}

		private var _parentThumb:String;

		public function get parentThumb():String {
			return _parentThumb;
		}

		public function set parentThumb(value:String):void {
			_parentThumb = value;
		}

		private var _grandparentThumb:String;

		public function get grandparentThumb():String {
			return _grandparentThumb;
		}

		public function set grandparentThumb(value:String):void {
			_grandparentThumb = value;
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

		public function Episode() {

		}
	}
}
