package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IMediaParser;
	import net.nweber.plex.valueObjects.Media;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class MediaParser implements IMediaParser
	{
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
			return null;
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