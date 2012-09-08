package net.nweber.plex.parsers.xml
{
	import mx.collections.ArrayList;
	
	import net.nweber.plex.parsers.ISectionsParser;
	import net.nweber.plex.valueObjects.Section;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class SectionsParser implements ISectionsParser
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		/*
		<MediaContainer size="3" mediaTagPrefix="/system/bundle/media/flags/" mediaTagVersion="1343722542" title1="Plex Library" identifier="com.plexapp.plugins.library">
			<Directory refreshing="0" key="1" type="movie" title="Movies" art="/:/resources/movie-fanart.jpg" agent="com.plexapp.agents.imdb" scanner="Plex Movie Scanner" language="en" updatedAt="1345553539" createdAt="1343788164">
			  <Location path="//MY-SERVER/Videos/Movies"/>
			</Directory>
			<Directory refreshing="0" key="3" type="artist" title="Music" art="/:/resources/artist-fanart.jpg" agent="com.plexapp.agents.lastfm" scanner="Plex Music Scanner" language="en" updatedAt="1344380536" createdAt="1344380185">
			  <Location path="//MY-SERVER/Music"/>
			</Directory>
			<Directory refreshing="0" key="2" type="show" title="TV Shows" art="/:/resources/show-fanart.jpg" agent="com.plexapp.agents.thetvdb" scanner="Plex Series Scanner" language="en" updatedAt="1345553561" createdAt="1343788538">
			  <Location path="//MY-SERVER/Videos/TV"/>
			</Directory>
		</MediaContainer>
		*/
		
		public function parse(value:Object):ArrayList {
			var sections:ArrayList = new ArrayList();
			
			var title:String;
			var type:String;
			var key:String;
			var art:String;
			
			var data:XML = new XML(value);
			var list:XMLList = data..Directory;
			
			for each (var x:XML in list) {
				title = x.@title;
				type = x.@type;
				key = x.@key;
				art = x.@art;
				sections.addItem(new Section(title, type, key, art));
			}
			
			// add hardcoded settings section
			sections.addItem(new Section("Settings", "settings", "", ""));
			
			return sections;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function SectionsParser() {
			
		}
	}
}