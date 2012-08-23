package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IPartParser;
	import net.nweber.plex.parsers.IStreamParser;
	import net.nweber.plex.valueObjects.Part;
	import net.nweber.plex.valueObjects.Stream;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class PartParser implements IPartParser
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		[Inject]
		public var streamParser:IStreamParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		/*
		<Part key="/library/parts/2025/file.mkv" duration="5704532" file="\\GIMMICKY-SERVER\Videos\Movies\(500) Days Of Summer.mkv" size="9381296804" container="mkv"/>
		
		<Part id="526" key="/library/parts/526/file.avi" duration="1326288" file="\\GIMMICKY-SERVER\Videos\TV\Whose Line Is It Anyway\Season 1\Whose.Line.is.it.Anyway.US.01x01.(103).DVDRip-XviD-RA.avi" size="184666112" container="avi">
			<Stream id="3197" streamType="1" codec="mpeg4" index="0" bitrate="974" duration="1326288" frameRate="29.970" gmc="0" height="400" level="5" profile="asp" qpel="0" width="544" />
			<Stream id="3198" streamType="2" selected="1" codec="mp3" index="1" channels="2" bitrate="128" bitrateMode="cbr" duration="1326288" samplingRate="48000" />
		</Part>
		*/
		
		public function parse(value:Object):Part {
			var data:XML = new XML(value);
			var list:XMLList;
			var x:XML;
			
			var p:Part = new Part();
			
			p.key = data.@key;
			p.duration = data.@duration;
			p.file = data.@file;
			p.size = data.@size;
			p.container = data.@container;
			
			p.streams = new Vector.<Stream>();
			var stream:Stream;
			list = data..Stream;
			for each (x in list) {
				stream = streamParser.parse(x);
				if (stream)
					p.streams.push(stream);
			}
			
			return p;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function PartParser() {
			
		}
	}
}