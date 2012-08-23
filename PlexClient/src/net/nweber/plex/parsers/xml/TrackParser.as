package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IMediaParser;
	import net.nweber.plex.parsers.ITrackParser;
	import net.nweber.plex.valueObjects.Media;
	import net.nweber.plex.valueObjects.Track;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class TrackParser implements ITrackParser
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		[Inject]
		public var mediaParser:IMediaParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		/*
		<Track ratingKey="3741" parentRatingKey="3740" key="/library/metadata/3741" type="track" title="The Rules" titleSort="Rules" parentKey="/library/metadata/3740" originalTitle="Hoobastank" summary="" index="1" duration="52506" addedAt="1344380280" updatedAt="1344380715">
			<Media id="3357" duration="52506" bitrate="204" audioCodec="mp3" container="mp3">
				<Part key="/library/parts/3670/file.mp3" duration="52506" file="\\GIMMICKY-SERVER\Music\Hoobastank\Every Man for Himself\01-hoobastank-the_rules.mp3" size="1433600" />
			</Media>
		</Track>
		*/
		
		public function parse(value:Object):Object {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			
			var t:Track = new Track();
			
			t.ratingKey = data.@ratingKey;
			t.parentRatingKey = data.@parentRatingKey;
			t.key = data.@key;
			t.title = data.@title;
			t.titleSort = data.@titleSort;
			t.parentKey = data.@parentKey;
			t.originalTitle = data.@originalTitle;
			t.summary = data.@summary;
			t.index = data.@index;
			t.duration = data.@duration;
			
			t.medias = new Vector.<Media>();
			var media:Media;
			list = data..Media;
			for each (x in list) {
				media = mediaParser.parse(x);
				if (media)
					t.medias.push(media);
			}
			
			return t;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function TrackParser() {
			
		}
	}
}