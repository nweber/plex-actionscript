package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IStreamParser;
	import net.nweber.plex.valueObjects.Stream;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StreamParser implements IStreamParser
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		/*
		<Stream id="3197" streamType="1" codec="mpeg4" index="0" bitrate="974" duration="1326288" frameRate="29.970" gmc="0" height="400" level="5" profile="asp" qpel="0" width="544" />
		*/
		
		public function parse(value:Object):Stream {
			var data:XML = new XML(value);
			
			var s:Stream = new Stream();
			
			s.id = data.@id;
			s.streamType = data.@streamType;
			s.codec = data.@codec;
			s.index = data.@index;
			s.bitrate = data.@bitrate;
			s.duration = data.@duration;
			s.frameRate = data.@frameRate;
			s.gmc = data.@gmc;
			s.height = data.@height;
			s.level = data.@level;
			s.profile = data.@profile;
			s.qpel = data.@qpel;
			s.width = data.@width;
			
			return s;
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function StreamParser() {
			
		}
	}
}