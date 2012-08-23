package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IAlbumParser;
	import net.nweber.plex.valueObjects.Album;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class AlbumParser implements IAlbumParser
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		/*
		<Directory ratingKey="3740" parentRatingKey="3739" key="/library/metadata/3740/children" type="album" title="Every Man For Himself" parentKey="/library/metadata/3739" summary="" index="1" year="2006" thumb="/library/metadata/3740/thumb?t=1344380716" originallyAvailableAt="2006-01-01" leafCount="13" viewedLeafCount="0" addedAt="1344380280" updatedAt="1344380716">
			<Genre tag="Rock" />
		</Directory>
		*/
		
		public function parse(value:Object):Object {
			var data:XML = new XML(value);
			
			if (data.@title == "All tracks")
				return null;
			
			var list:XMLList;
			var x:XML;
			
			var a:Album = new Album();
			
			a.ratingKey = data.@ratingKey;
			a.parentRatingKey = data.@parentRatingKey;
			a.key = data.@key;
			a.title = data.@title;
			a.parentKey = data.@parentKey;
			a.summary = data.@summary;
			a.index = data.@index;
			a.year = data.@year;
			a.thumb = data.@thumb;
			a.leafCount = data.@leafCount;
			a.viewedLeafCount = data.@viewedLeafCount;
			
			a.genres = new Vector.<String>();
			list = data..Genre;
			for each (x in list) {
				a.genres.push(x.@tag);
			}
			
			return a;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function AlbumParser() {
			
		}
	}
}