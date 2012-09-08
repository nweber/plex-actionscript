package net.nweber.plex.mediators
{
	import flash.net.SharedObject;
	
	import mx.controls.Alert;
	import mx.core.mx_internal;
	import mx.utils.Base64Encoder;
	
	import net.nweber.plex.ApplicationStates;
	import net.nweber.plex.events.DiscoverServerEvent;
	import net.nweber.plex.events.LoginEvent;
	import net.nweber.plex.events.SectionContentsEvent;
	import net.nweber.plex.events.SectionsEvent;
	import net.nweber.plex.events.SelectionEvent;
	import net.nweber.plex.events.ServersEvent;
	import net.nweber.plex.model.LayoutModel;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.services.IDiscoverServerService;
	import net.nweber.plex.services.IGetSectionContentsService;
	import net.nweber.plex.services.ILoginService;
	import net.nweber.plex.services.ISectionsService;
	import net.nweber.plex.services.IServersService;
	import net.nweber.plex.valueObjects.Artist;
	import net.nweber.plex.valueObjects.LoginInfo;
	import net.nweber.plex.valueObjects.Movie;
	import net.nweber.plex.valueObjects.Section;
	import net.nweber.plex.valueObjects.Show;
	import net.nweber.plex.valueObjects.User;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ApplicationMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		private static const USER_SHARED_OBJECT:String = "plexUserObject";
		
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		private var userSharedObject:SharedObject;
		private var sectionsToFetch:Array;
		private var fetchedSection:Section;
		
		[Inject]
		public var view:PlexClient;
		
		[Inject]
		public var model:PlexModel;
		
		[Inject]
		public var layoutModel:LayoutModel;
		
		[Inject]
		public var loginService:ILoginService;
		
		[Inject]
		public var serversService:IServersService;
		
		[Inject]
		public var discoveryService:IDiscoverServerService;
		
		[Inject]
		public var sectionsService:ISectionsService;
		
		[Inject]
		public var getSectionContentService:IGetSectionContentsService;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function onRegister():void {
			addContextListener(LoginEvent.EXECUTE, onExecuteLogin);
			addContextListener(LoginEvent.COMPLETE, onLoginComplete);
			addContextListener(LoginEvent.ERROR, onLoginError);
			
			addContextListener(ServersEvent.COMPLETE, onServersComplete);
			addContextListener(ServersEvent.ERROR, onServersError);
			
			addContextListener(DiscoverServerEvent.LOCAL_AVAILABLE, onLocalServerAvailable);
			addContextListener(DiscoverServerEvent.REMOTE_AVAILABLE, onRemoteServerAvailable);
			
			addContextListener(SectionsEvent.COMPLETE, onSectionsComplete);
			addContextListener(SectionsEvent.ERROR, onSectionsError);
			
			addContextListener(SectionContentsEvent.COMPLETE, onGetSectionContentsComplete);
			addContextListener(SectionContentsEvent.ERROR, onGetSectionContentsError);
			
			addContextListener(SelectionEvent.SELECT_SECTION, onSelectSection);
			
			if (checkUserCache()) {
				startLoading(userSharedObject.data.token);
			}
			else {
				view.currentState = ApplicationStates.LOGIN;
			}
		}
		
		//----------------------------------------
		//
		//  Internal Methods
		//
		//----------------------------------------
		
		private function checkUserCache():Boolean {
			// check to see if we have cached user info
			userSharedObject = SharedObject.getLocal("USER_SHARED_OBJECT");
			if (userSharedObject.size > 0) {
				return true;
			}
			else {
				return false;
			}
		}
		
		private function startLoading(token:String):void {
			loginService.execute(token);
			view.currentState = ApplicationStates.LOADING;
		}
		
		private function loadPendingSection():void {
			while (sectionsToFetch.length > 0) {
				fetchedSection = sectionsToFetch.pop();
				if (fetchedSection.key != null && fetchedSection.key.length > 0)
					break;
			}
			
			if (fetchedSection && fetchedSection.key != null && fetchedSection.key.length > 0) {
				getSectionContentService.execute(fetchedSection.key, model.user.token);
			}
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onExecuteLogin(event:LoginEvent):void {
			var info:LoginInfo = event.item as LoginInfo;
			if (!info)
				return;
			
			var encoder:Base64Encoder = new Base64Encoder();
			encoder.insertNewLines = false;
			encoder.encode(info.username + ":" + info.password);
			var credentials:String = encoder.flush();
			
			// save the encoded credentials into a shared object
			if (info.remember) {
				userSharedObject.data.token = credentials;
				userSharedObject.flush();
			}
			
			startLoading(credentials);
		}
		
		private function onLoginComplete(event:LoginEvent):void {
			model.user = (event.item as User);
			serversService.execute(model.user.token);
		}
		
		private function onLoginError(event:LoginEvent):void {
			view.currentState = ApplicationStates.LOGIN;
			Alert.show("An error occured!", "Error");
		}
		
		private function onServersComplete(event:ServersEvent):void {
			model.server = event.server;
			discoveryService.execute(model.user.token);
		}
		
		private function onServersError(event:ServersEvent):void {
			Alert.show("An error occured!", "Error");
		}
		
		private function onLocalServerAvailable(event:DiscoverServerEvent):void {
			model.localAvailable = true;
			sectionsService.execute(model.user.token);
		}
		
		private function onRemoteServerAvailable(event:DiscoverServerEvent):void {
			model.localAvailable = false;
			sectionsService.execute(model.user.token);
		}
		
		private function onSectionsComplete(event:SectionsEvent):void {
			model.sections = event.sections;
			
			// show home page
			view.currentState = ApplicationStates.HOME;
			
			// get section contents in background
			sectionsToFetch = model.sections.source.concat().reverse();
			loadPendingSection();
		}
		
		private function onSectionsError(event:SectionsEvent):void {
			Alert.show("An error occured!", "Error");
		}
		
		private function onGetSectionContentsComplete(event:SectionContentsEvent):void {
			switch (fetchedSection.key) {
				case PlexModel.MOVIES_KEY:
					model.movies = event.items;
					break;
				case PlexModel.SHOWS_KEY:
					model.shows = event.items;
					break;
				case PlexModel.MUSIC_KEY:
					model.artists = event.items;
					break;
			}
			
			loadPendingSection();
		}
		
		private function onGetSectionContentsError(event:SectionContentsEvent):void {
			Alert.show("An error occured!", "Error");
		}
		
		private function onSelectSection(event:SelectionEvent):void {
			switch (event.item.type) {
				case "movie":
					view.currentState = ApplicationStates.MOVIES;
					break;
				case "show":
					view.currentState = ApplicationStates.TV_SHOWS;
					break;
				case "artist":
					view.currentState = ApplicationStates.MUSIC;
					break;
			}
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function ApplicationMediator() {
			super();
		}
	}
}