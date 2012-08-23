package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IEpisodeParser;
	import net.nweber.plex.parsers.IMediaParser;
	import net.nweber.plex.valueObjects.Episode;
	import net.nweber.plex.valueObjects.Media;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class EpisodeParser implements IEpisodeParser
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
		<?xml version="1.0" encoding="UTF-8"?>
		<MediaContainer size="1" mediaTagPrefix="/system/bundle/media/flags/" mediaTagVersion="1343722542" identifier="com.plexapp.plugins.library">
			<Video ratingKey="510" parentRatingKey="509" grandparentRatingKey="508" key="/library/metadata/510" guid="com.plexapp.agents.thetvdb://76808/1/1?lang=en" type="episode" title="Greg Proops" grandparentKey="/library/metadata/508" parentKey="/library/metadata/509" grandparentTitle="Whose Line Is It Anyway" contentRating="TV-PG" summary="In Let&apos;s Make A Date, Greg must choose from an old blues player (Wayne), an exictable dog (Colin), and an auctioneer (Ryan); Colin takes his first emergency call in Sound Effects; Hats; Songs of the Accountant; Greg hosts Party Quirks and entertains Wayne&apos;s slow-motion fighter, Colin&apos;s circus performer, and Ryan&apos;s foal being born.&#xA;Wayne wins, and he and Drew act out Banished on the Breezes in Farsi in Foreign Film Dub, Greg translating for Wayne and Ryan for Drew." index="1" parentIndex="1" rating="8.8" viewCount="1" lastViewedAt="1344304834" year="1998" thumb="/library/metadata/510/thumb?t=1343863895" art="/library/metadata/508/art?t=1343863918" parentThumb="/library/metadata/509/thumb?t=1343863917" grandparentThumb="/library/metadata/508/thumb?t=1343863918" duration="1326288" originallyAvailableAt="1998-08-05" addedAt="1343863776" updatedAt="1343863895">
				<Media id="469" duration="1326288" bitrate="1113" width="544" height="400" aspectRatio="1.33" audioChannels="2" audioCodec="mp3" videoCodec="mpeg4" videoResolution="sd" container="avi" videoFrameRate="NTSC">
					<Part id="526" key="/library/parts/526/file.avi" duration="1326288" file="\\GIMMICKY-SERVER\Videos\TV\Whose Line Is It Anyway\Season 1\Whose.Line.is.it.Anyway.US.01x01.(103).DVDRip-XviD-RA.avi" size="184666112" container="avi">
						<Stream id="3197" streamType="1" codec="mpeg4" index="0" bitrate="974" duration="1326288" frameRate="29.970" gmc="0" height="400" level="5" profile="asp" qpel="0" width="544" />
						<Stream id="3198" streamType="2" selected="1" codec="mp3" index="1" channels="2" bitrate="128" bitrateMode="cbr" duration="1326288" samplingRate="48000" />
					</Part>
				</Media>
			</Video>
		</MediaContainer>
		*/
		
		public function parse(value:Object):Object {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			
			var e:Episode = new Episode();
			
			e.ratingKey = data.@ratingKey;
			e.parentRatingKey = data.@parentRatingKey;
			e.grandparentRatingKey = data.@grandparentRatingKey;
			e.key = data.@key;
			e.title = data.@title;
			e.grandparentKey = data.@grandparentKey;
			e.parentKey = data.@parentKey;
			e.grandparentTitle = data.@grandparentTitle;
			e.contentRating = data.@contentRating;
			e.summary = data.@summary;
			e.index = data.@index;
			e.parentIndex = data.@parentIndex;
			e.rating = data.@rating;
			e.viewCount = data.@viewCount;
			e.year = data.@year;
			e.thumb = data.@thumb;
			e.art = data.@art;
			e.parentThumb = data.@parentThumb;
			e.grandparentThumb = data.@grandparentThumb;
			e.duration = data.@duration;
			
			e.medias = new Vector.<Media>();
			var media:Media;
			list = data..Media;
			for each (x in list) {
				media = mediaParser.parse(x);
				if (media)
					e.medias.push(media);
			}
			
			return e;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function EpisodeParser() {
			
		}
	}
}