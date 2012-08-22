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
			return null;
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