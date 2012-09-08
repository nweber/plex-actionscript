package net.nweber.plex.services.remote
{
	import mx.collections.ArrayList;
	
	import net.nweber.plex.events.SectionsEvent;
	import net.nweber.plex.parsers.ISectionsParser;
	import net.nweber.plex.services.ISectionsService;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class SectionsService extends BasePlexService implements ISectionsService
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		private const FRAGMENT:String = "library/sections?X-Plex-Token=";
		
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:ISectionsParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(token:String):void {
			var fragment:String = FRAGMENT + token;
			doLoad(fragment);
		}
		
		override protected function processComplete(data:Object):void {
			var sections:ArrayList = parser.parse(data);
			dispatch(new SectionsEvent(SectionsEvent.COMPLETE, sections));
		}
		
		override protected function processError():void {
			dispatch(new SectionsEvent(SectionsEvent.ERROR));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function SectionsService() {
			super();
		}
	}
}