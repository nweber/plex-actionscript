package net.nweber.plex
{
	import flash.display.DisplayObjectContainer;
	
	import net.nweber.plex.components.LoadingSpinner;
	import net.nweber.plex.mediators.ApplicationMediator;
	import net.nweber.plex.mediators.LoadingMediator;
	import net.nweber.plex.mediators.LoginMediator;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.parsers.IServersParser;
	import net.nweber.plex.parsers.IUserParser;
	import net.nweber.plex.parsers.xml.MyPlexServersParser;
	import net.nweber.plex.parsers.xml.MyPlexUserParser;
	import net.nweber.plex.services.ILoginService;
	import net.nweber.plex.services.IServersService;
	import net.nweber.plex.services.remote.ProxyLoginService;
	import net.nweber.plex.services.remote.ProxyServersService;
	import net.nweber.plex.views.LoginView;
	
	import org.robotlegs.mvcs.Context;
	
	public class PlexContext extends Context
	{
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function startup():void {
			injector.mapSingleton(PlexModel);
			
			injector.mapSingletonOf(ILoginService, ProxyLoginService);
			injector.mapSingletonOf(IUserParser, MyPlexUserParser);
			
			injector.mapSingletonOf(IServersService, ProxyServersService);
			injector.mapSingletonOf(IServersParser, MyPlexServersParser);
			
			mediatorMap.mapView(LoadingSpinner, LoadingMediator);
			mediatorMap.mapView(LoginView, LoginMediator);
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