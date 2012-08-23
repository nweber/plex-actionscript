package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IAlbumParser;
	import net.nweber.plex.parsers.IArtistParser;
	import net.nweber.plex.parsers.IEpisodeParser;
	import net.nweber.plex.parsers.IItemListParser;
	import net.nweber.plex.parsers.IItemParser;
	import net.nweber.plex.parsers.IMovieParser;
	import net.nweber.plex.parsers.ISeasonParser;
	import net.nweber.plex.parsers.IShowParser;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class ItemListParser implements IItemListParser
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		[Inject]
		public var movieParser:IMovieParser;
		
		[Inject]
		public var showParser:IShowParser;
		
		[Inject]
		public var seasonParser:ISeasonParser;
		
		[Inject]
		public var episodeParser:IEpisodeParser;
		
		[Inject]
		public var artistParser:IArtistParser;
		
		[Inject]
		public var albumParser:IAlbumParser;
		
		//----------------------------------------	
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function parse(value:Object):Array {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			
			var collection:Array = [];
			var parser:IItemParser;
			var item:Object;
			
			list = data..Video;
			for each (x in list) {
				parser = getParser(x.@type);
				if (parser)
					item = parser.parse(x);
				if (item)
					collection.push(item);
			}
			
			list = data..Directory;
			for each (x in list) {
				parser = getParser(x.@type);
				if (parser)
					item = parser.parse(x);
				if (item)
					collection.push(item);
			}
			
			return collection;
		}
		
		//----------------------------------------
		//
		// Internal Methods
		//
		//----------------------------------------
		
		protected function getParser(type:String):IItemParser {
			var parser:IItemParser;
			
			switch (type) {
				case "movie":
					parser = movieParser;
					break;
				case "show":
					parser = showParser;
					break;
				case "season":
					parser = seasonParser;
					break;
				case "episode":
					parser = episodeParser;
					break;
				case "artist":
					parser = artistParser;
					break;
				case "album":
					parser = albumParser;
					break;
			}
			
			return parser;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function ItemListParser() {
			
		}
	}
}