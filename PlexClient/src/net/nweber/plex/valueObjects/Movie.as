package net.nweber.plex.valueObjects
{

	/**
	 *
	 *
	 * @author Nathan Weber
	 */
	public class Movie
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------

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

		private var _summary:String;

		public function get summary():String {
			return _summary;
		}

		public function set summary(value:String):void {
			_summary = value;
		}

		private var _tagline:String;

		public function get tagline():String {
			return _tagline;
		}

		public function set tagline(value:String):void {
			_tagline = value;
		}

		private var _duration:Number;

		public function get duration():Number {
			return _duration;
		}

		public function set duration(value:Number):void {
			_duration = value;
		}

		private var _studio:String;

		public function get studio():String {
			return _studio;
		}

		public function set studio(value:String):void {
			_studio = value;
		}

		private var _year:Number;

		public function get year():Number {
			return _year;
		}

		public function set year(value:Number):void {
			_year = value;
		}

		private var _genres:Vector.<String>;

		public function get genres():Vector.<String> {
			return _genres;
		}

		public function set genres(value:Vector.<String>):void {
			_genres = value;
		}

		private var _writers:Vector.<String>;

		public function get writers():Vector.<String> {
			return _writers;
		}

		public function set writers(value:Vector.<String>):void {
			_writers = value;
		}

		private var _director:String;

		public function get director():String {
			return _director;
		}

		public function set director(value:String):void {
			_director = value;
		}

		private var _country:String;

		public function get country():String {
			return _country;
		}

		public function set country(value:String):void {
			_country = value;
		}

		private var _roles:Vector.<String>;

		public function get roles():Vector.<String> {
			return _roles;
		}

		public function set roles(value:Vector.<String>):void {
			_roles = value;
		}

		private var _contentRating:String;

		public function get contentRating():String {
			return _contentRating;
		}

		public function set contentRating(value:String):void {
			_contentRating = value;
		}

		private var _rating:Number;

		public function get rating():Number {
			return _rating;
		}

		public function set rating(value:Number):void {
			_rating = value;
		}

		private var _ratingKey:String;

		public function get ratingKey():String {
			return _ratingKey;
		}

		public function set ratingKey(value:String):void {
			_ratingKey = value;
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

		public function Movie() {

		}
	}
}
