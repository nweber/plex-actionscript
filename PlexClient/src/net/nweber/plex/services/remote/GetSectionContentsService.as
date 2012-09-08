package net.nweber.plex.services.remote
{
	import mx.collections.ArrayList;
	
	import net.nweber.plex.events.SectionContentsEvent;
	import net.nweber.plex.parsers.IItemListParser;
	import net.nweber.plex.services.IGetSectionContentsService;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class GetSectionContentsService extends BasePlexService implements IGetSectionContentsService
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		private const FRAGMENT_ONE:String = "library/sections/";
		private const FRAGMENT_TWO:String = "/all?X-Plex-Token=";
		
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:IItemListParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(sectionKey:String, token:String):void {
			var fragment:String = FRAGMENT_ONE + sectionKey + FRAGMENT_TWO + token;
			doLoad(fragment);
		}
		
		override protected function processComplete(data:Object):void {
			var items:ArrayList = parser.parse(data);
			dispatch(new SectionContentsEvent(SectionContentsEvent.COMPLETE, items));
		}
		
		override protected function processError():void {
			dispatch(new SectionContentsEvent(SectionContentsEvent.ERROR));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function GetSectionContentsService() {
			super();
		}
	}
}