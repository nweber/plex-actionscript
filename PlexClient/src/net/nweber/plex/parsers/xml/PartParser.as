package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IPartParser;
	import net.nweber.plex.valueObjects.Part;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class PartParser implements IPartParser
	{
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		/*
		<Part key="/library/parts/2025/file.mkv" duration="5704532" file="\\GIMMICKY-SERVER\Videos\Movies\(500) Days Of Summer.mkv" size="9381296804" container="mkv"/>
		*/
		
		public function parse(value:Object):Part {
			var data:XML = new XML(value);
			
			var p:Part = new Part();
			
			p.key = data.@key;
			p.duration = data.@duration;
			p.file = data.@file;
			p.size = data.@size;
			p.container = data.@container;
			
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