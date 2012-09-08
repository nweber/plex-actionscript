package net.nweber.plex
{
	import flash.display.DisplayObjectContainer;
	
	import net.nweber.plex.components.*;
	import net.nweber.plex.mediators.*;
	import net.nweber.plex.model.*;
	import net.nweber.plex.parsers.*;
	import net.nweber.plex.parsers.xml.*;
	import net.nweber.plex.services.*;
	import net.nweber.plex.services.remote.*;
	import net.nweber.plex.services.stub.*;
	import net.nweber.plex.views.*;
	
	import org.robotlegs.mvcs.Context;
	
	public class PlexContext extends Context
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		private static const USE_STUB_DATA:Boolean = false;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function startup():void {
			mapModels();
			mapDataParsers();
			mapServices();
			mapMediators();
			mapApplication();
		}
		
		//----------------------------------------
		//
		//  Internal Methods
		//
		//----------------------------------------
		
		protected function mapModels():void {
			injector.mapSingleton(PlexModel);
			injector.mapSingleton(LayoutModel);
		}
		
		protected function mapDataParsers():void {
			injector.mapSingletonOf(IUserParser, MyPlexUserParser);
			injector.mapSingletonOf(IServersParser, MyPlexServersParser);
			injector.mapSingletonOf(ISectionsParser, SectionsParser);
			
			injector.mapSingletonOf(IItemListParser, ItemListParser);
			
			injector.mapSingletonOf(IMovieParser, MovieParser);
			
			injector.mapSingletonOf(IShowParser, ShowParser);
			injector.mapSingletonOf(ISeasonParser, SeasonParser);
			injector.mapSingletonOf(IEpisodeParser, EpisodeParser);
			
			injector.mapSingletonOf(IArtistParser, ArtistParser);
			injector.mapSingletonOf(IAlbumParser, AlbumParser);
			injector.mapSingletonOf(ITrackParser, TrackParser);
			
			injector.mapSingletonOf(IMediaParser, MediaParser);
			injector.mapSingletonOf(IPartParser, PartParser);
			injector.mapSingletonOf(IStreamParser, StreamParser);
		}
		
		protected function mapServices():void {
			if (USE_STUB_DATA) {
				injector.mapSingletonOf(ILoginService, StubLoginService);
				injector.mapSingletonOf(IServersService, StubServersService);
				injector.mapSingletonOf(IDiscoverServerService, StubDiscoverServerService);
				injector.mapSingletonOf(ISectionsService, StubSectionsService);
				injector.mapSingletonOf(IGetSectionContentsService, StubGetSectionContentsService);
			}
			else {
				injector.mapSingletonOf(ILoginService, ProxyLoginService);
				injector.mapSingletonOf(IServersService, ProxyServersService);
				injector.mapSingletonOf(IDiscoverServerService, DiscoverServerService);
				injector.mapSingletonOf(ISectionsService, SectionsService);
				injector.mapSingletonOf(IGetSectionContentsService, GetSectionContentsService);
			}
		}
		
		protected function mapMediators():void {
			mediatorMap.mapView(LoadingSpinner, LoadingMediator);
			mediatorMap.mapView(LoginView, LoginMediator);
			mediatorMap.mapView(HomeView, HomeMediator);
			mediatorMap.mapView(HeaderBar, HeaderMediator);
			mediatorMap.mapView(MoviesView, MoviesMediator);
			mediatorMap.mapView(MusicView, MusicMediator);
			mediatorMap.mapView(ShowsView, ShowsMediator);
		}
		
		protected function mapApplication():void {
			mediatorMap.mapView(PlexClient, ApplicationMediator);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function PlexContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true) {
			super(contextView, autoStartup);
		}
	}
}