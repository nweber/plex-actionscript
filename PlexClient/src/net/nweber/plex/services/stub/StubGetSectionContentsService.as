package net.nweber.plex.services.stub
{
	import net.nweber.plex.events.SectionContentsEvent;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.parsers.IItemListParser;
	import net.nweber.plex.services.IGetSectionContentsService;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StubGetSectionContentsService extends BaseStubService implements IGetSectionContentsService
	{
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:IItemListParser;
		
		private var currentSectionKey:String;
		
		override protected function get stubDataURL():String {
			var url:String;
			
			switch (currentSectionKey) {
				case PlexModel.MOVIES_KEY:
					url = "stub/movies.xml";
					break;
				case PlexModel.SHOWS_KEY:
					url = "stub/shows.xml";
					break;
				case PlexModel.MUSIC_KEY:
					url = "stub/music.xml";
					break;
				default:
					dispatch(new SectionContentsEvent(SectionContentsEvent.ERROR));
			}
			
			return url;
		}
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(sectionKey:String, token:String):void {
			currentSectionKey = sectionKey;
			doLoad();
		}
		
		override protected function doParse(data:Object):void {
			currentSectionKey = null;
			var items:Array = parser.parse(data);
			dispatch(new SectionContentsEvent(SectionContentsEvent.COMPLETE, items));			
		}
		
		override protected function doError():void {
			currentSectionKey = null;
			dispatch(new SectionContentsEvent(SectionContentsEvent.ERROR));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function StubGetSectionContentsService() {
			
		}
	}
}