package net.nweber.plex.services.stub
{
	import net.nweber.plex.events.SectionsEvent;
	import net.nweber.plex.parsers.ISectionsParser;
	import net.nweber.plex.services.ISectionsService;
	import net.nweber.plex.valueObjects.Section;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StubSectionsService extends Actor implements ISectionsService
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		private static const STUB_DATA:XML = <MediaContainer size="3" mediaTagPrefix="/system/bundle/media/flags/" mediaTagVersion="1343722542" title1="Plex Library" identifier="com.plexapp.plugins.library">
											  <Directory refreshing="0" key="1" type="movie" title="Movies" art="/:/resources/movie-fanart.jpg" agent="com.plexapp.agents.imdb" scanner="Plex Movie Scanner" language="en" updatedAt="1345553539" createdAt="1343788164">
											    <Location path="//MY-SERVER/Videos/Movies"/>
											  </Directory>
											  <Directory refreshing="0" key="3" type="artist" title="Music" art="/:/resources/artist-fanart.jpg" agent="com.plexapp.agents.lastfm" scanner="Plex Music Scanner" language="en" updatedAt="1344380536" createdAt="1344380185">
											    <Location path="//MY-SERVER/Music"/>
											  </Directory>
											  <Directory refreshing="0" key="2" type="show" title="TV Shows" art="/:/resources/show-fanart.jpg" agent="com.plexapp.agents.thetvdb" scanner="Plex Series Scanner" language="en" updatedAt="1345553561" createdAt="1343788538">
											    <Location path="//MY-SERVER/Videos/TV"/>
											  </Directory>
											 </MediaContainer>;
		
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
			var sections:Vector.<Section> = parser.parse(STUB_DATA);
			dispatch(new SectionsEvent(SectionsEvent.COMPLETE, sections));
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