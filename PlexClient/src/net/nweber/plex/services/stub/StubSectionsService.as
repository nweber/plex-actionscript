package net.nweber.plex.services.stub
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
	public class StubSectionsService extends BaseStubService implements ISectionsService
	{
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:ISectionsParser;
		
		override protected function get stubDataURL():String {
			return "stub/sections.xml";
		}
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(token:String):void {
			doLoad();
		}
		
		override protected function doParse(data:Object):void {
			var sections:ArrayList = parser.parse(data);
			dispatch(new SectionsEvent(SectionsEvent.COMPLETE, sections));
		}
		
		override protected function doError():void {
			dispatch(new SectionsEvent(SectionsEvent.ERROR));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function StubSectionsService() {
			super();
		}
	}
}