package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IMediaParser;
	import net.nweber.plex.parsers.IPartParser;
	import net.nweber.plex.valueObjects.Media;
	import net.nweber.plex.valueObjects.Part;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class MediaParser implements IMediaParser
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		[Inject]
		public var partParser:IPartParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		/*
		<Media id="1712" duration="5704532" bitrate="13156" width="1920" height="800" aspectRatio="2.35" audioChannels="6" audioCodec="dca" videoCodec="h264" videoResolution="1080" container="mkv" videoFrameRate="24p">
			<Part key="/library/parts/2025/file.mkv" duration="5704532" file="\\GIMMICKY-SERVER\Videos\Movies\(500) Days Of Summer.mkv" size="9381296804" container="mkv"/>
		</Media>
		*/
		
		public function parse(value:Object):Media {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			
			var m:Media = new Media();
			
			m.id = data.@id;
			m.duration = data.@duration;
			m.bitrate = data.@bitrate;
			m.width = data.@width;
			m.height = data.@height;
			m.aspectRatio = data.@aspectRatio;
			m.audioChannels = data.@audioChannels;
			m.audioCodec = data.@audioCodec;
			m.videoCodec = data.@videoCodec;
			m.videoResolution = data.@videoResolution;
			m.container = data.@container;
			m.videoFrameRate = data.@videoFrameRate;
			
			m.parts = new Vector.<Part>();
			var part:Part;
			list = data..Part;
			for each (x in list) {
				part = partParser.parse(x);
				if (part)
					m.parts.push(part);
			}
			
			return m;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function MediaParser() {
			
		}
	}
}