package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.ISeasonParser;
	import net.nweber.plex.valueObjects.Season;
	import net.nweber.plex.valueObjects.Show;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class SeasonParser implements ISeasonParser
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		/*
		<Directory ratingKey="509" parentRatingKey="508" key="/library/metadata/509/children" type="season" title="Season 1" parentKey="/library/metadata/508" summary="" index="1" thumb="/library/metadata/509/thumb?t=1343863917" leafCount="20" viewedLeafCount="20" addedAt="1343863776" updatedAt="1343863917">
		</Directory>
		*/
		
		public function parse(value:Object):Object {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			
			var s:Season = new Season();
			
			s.ratingKey = x.@ratingKey;
			s.parentRatingKey = x.@parentRatingKey;
			s.key = x.@key;
			s.title = x.@title;
			s.parentKey = x.@parentKey;
			s.summary = x.@summary;
			s.index = x.@index;
			s.thumb = x.@thumb;
			s.leafCount = x.@leafCount;
			s.viewedLeafCount = x.@viewedLeafCount;
			
			return s;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function SeasonParser() {
			
		}
	}
}