package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IShowParser;
	import net.nweber.plex.valueObjects.Show;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class ShowParser implements IShowParser
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		/*
		<Directory ratingKey="2240" key="/library/metadata/2240/children" studio="HBO" type="show" title="Game of Thrones" contentRating="TV-MA" summary="Based on the fantasy novel series &quot;A Song of Ice and Fire,&quot; Game of Thrones explores the story of an epic battle among seven kingdoms and two ruling families in the only game that matters - the Game of Thrones. All seek control of the Iron Throne, the possession of which ensures survival through the 40-year winter to come." index="1" rating="9.4" year="2011" tagline="When you play the game of thrones, you win or you die." thumb="/library/metadata/2240/thumb?t=1344048472" art="/library/metadata/2240/art?t=1344048472" banner="/library/metadata/2240/banner?t=1344048472" theme="/library/metadata/2240/theme?t=1344048472" duration="3600000" originallyAvailableAt="2011-04-17" leafCount="10" viewedLeafCount="10" addedAt="1344048134" updatedAt="1344048472">
			<Genre tag="Action and Adventure"/>
			<Genre tag="Drama"/>
		</Directory>
		*/
		
		public function parse(value:Object):Object {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			
			var s:Show = new Show();
			
			s.ratingKey = data.@ratingKey;
			s.key = data.@key;
			s.studio = data.@studio;
			s.title = data.@title;
			s.contentRating = data.@contentRating;
			s.summary = data.@summary;
			s.index = data.@index;
			s.rating = data.@rating;
			s.year = data.@year;
			s.tagline = data.@tagline;
			s.thumb = data.@thumb;
			s.art = data.@art;
			s.banner = data.@banner;
			s.theme = data.@theme;
			s.duration = data.@duration;
			s.leafCount = data.@leafCount;
			s.viewedLeafCount = data.@viewedLeafCount;
			
			s.genres = new Vector.<String>();
			list = data..Genre;
			for each (x in list) {
				s.genres.push(x.@tag);
			}
			
			return s;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function ShowParser() {
			
		}
	}
}