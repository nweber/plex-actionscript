package net.nweber.plex
{
	import flash.display.DisplayObjectContainer;
	
	import net.nweber.plex.components.LoadingSpinner;
	import net.nweber.plex.mediators.ApplicationMediator;
	import net.nweber.plex.mediators.LoadingMediator;
	import net.nweber.plex.mediators.LoginMediator;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.parsers.IAlbumParser;
	import net.nweber.plex.parsers.IArtistParser;
	import net.nweber.plex.parsers.IEpisodeParser;
	import net.nweber.plex.parsers.IItemListParser;
	import net.nweber.plex.parsers.IMediaParser;
	import net.nweber.plex.parsers.IMovieParser;
	import net.nweber.plex.parsers.IPartParser;
	import net.nweber.plex.parsers.ISeasonParser;
	import net.nweber.plex.parsers.ISectionsParser;
	import net.nweber.plex.parsers.IServersParser;
	import net.nweber.plex.parsers.IShowParser;
	import net.nweber.plex.parsers.IStreamParser;
	import net.nweber.plex.parsers.ITrackParser;
	import net.nweber.plex.parsers.IUserParser;
	import net.nweber.plex.parsers.xml.AlbumParser;
	import net.nweber.plex.parsers.xml.ArtistParser;
	import net.nweber.plex.parsers.xml.EpisodeParser;
	import net.nweber.plex.parsers.xml.ItemListParser;
	import net.nweber.plex.parsers.xml.MediaParser;
	import net.nweber.plex.parsers.xml.MovieParser;
	import net.nweber.plex.parsers.xml.MyPlexServersParser;
	import net.nweber.plex.parsers.xml.MyPlexUserParser;
	import net.nweber.plex.parsers.xml.PartParser;
	import net.nweber.plex.parsers.xml.SeasonParser;
	import net.nweber.plex.parsers.xml.SectionsParser;
	import net.nweber.plex.parsers.xml.ShowParser;
	import net.nweber.plex.parsers.xml.StreamParser;
	import net.nweber.plex.parsers.xml.TrackParser;
	import net.nweber.plex.services.IDiscoverServerService;
	import net.nweber.plex.services.IGetSectionContentsService;
	import net.nweber.plex.services.ILoginService;
	import net.nweber.plex.services.ISectionsService;
	import net.nweber.plex.services.IServersService;
	import net.nweber.plex.services.remote.ProxyLoginService;
	import net.nweber.plex.services.remote.ProxyServersService;
	import net.nweber.plex.services.stub.StubDiscoverServerService;
	import net.nweber.plex.services.stub.StubGetSectionContentsService;
	import net.nweber.plex.services.stub.StubLoginService;
	import net.nweber.plex.services.stub.StubSectionsService;
	import net.nweber.plex.services.stub.StubServersService;
	import net.nweber.plex.views.LoginView;
	
	import org.robotlegs.mvcs.Context;
	
	public class PlexContext extends Context
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		private static const USE_STUB_DATA:Boolean = true;
		
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
				//injector.mapSingletonOf(ISectionsService, StubSectionsService);
			}
		}
		
		protected function mapMediators():void {
			mediatorMap.mapView(LoadingSpinner, LoadingMediator);
			mediatorMap.mapView(LoginView, LoginMediator);
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