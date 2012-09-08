package net.nweber.plex.valueObjects
{
	[Bindable]
	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Show
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

		private var _studio:String;

		public function get studio():String {
			return _studio;
		}

		public function set studio(value:String):void {
			_studio = value;
		}

		private var _title:String;

		public function get title():String {
			return _title;
		}

		public function set title(value:String):void {
			_title = value;
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

		private var _rating:Number;

		public function get rating():Number {
			return _rating;
		}

		public function set rating(value:Number):void {
			_rating = value;
		}

		private var _year:int;

		public function get year():int {
			return _year;
		}

		public function set year(value:int):void {
			_year = value;
		}

		private var _tagline:String;

		public function get tagline():String {
			return _tagline;
		}

		public function set tagline(value:String):void {
			_tagline = value;
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

		private var _banner:String;

		public function get banner():String {
			return _banner;
		}

		public function set banner(value:String):void {
			_banner = value;
		}

		private var _theme:String;

		public function get theme():String {
			return _theme;
		}

		public function set theme(value:String):void {
			_theme = value;
		}

		private var _duration:Number;

		public function get duration():Number {
			return _duration;
		}

		public function set duration(value:Number):void {
			_duration = value;
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

		private var _seasons:Vector.<Season>;

		public function get seasons():Vector.<Season> {
			return _seasons;
		}

		public function set seasons(value:Vector.<Season>):void {
			_seasons = value;
		}

		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------

		public function Show() {

		}
	}
}
