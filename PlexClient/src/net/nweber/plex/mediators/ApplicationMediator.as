package net.nweber.plex.mediators
{
	import flash.net.SharedObject;
	
	import mx.controls.Alert;
	import mx.utils.Base64Encoder;
	
	import net.nweber.plex.ApplicationStates;
	import net.nweber.plex.events.LoginEvent;
	import net.nweber.plex.events.ServersEvent;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.services.ILoginService;
	import net.nweber.plex.services.IServersService;
	
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
		
		[Inject]
		public var view:PlexClient;
		
		[Inject]
		public var model:PlexModel;
		
		[Inject]
		public var loginService:ILoginService;
		
		[Inject]
		public var serversService:IServersService;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function onRegister():void {
			if (checkUserCache()) {
				startLoading(userSharedObject.data.token);
			}
			else {
				view.currentState = ApplicationStates.LOGIN;
			}
			
			addContextListener(LoginEvent.EXECUTE, onExecuteLogin);
			addContextListener(LoginEvent.COMPLETE, onLoginComplete);
			addContextListener(LoginEvent.ERROR, onLoginError);
			
			addContextListener(ServersEvent.COMPLETE, onServersComplete);
			addContextListener(ServersEvent.ERROR, onServersError);
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
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onExecuteLogin(event:LoginEvent):void {
			var encoder:Base64Encoder = new Base64Encoder();
			encoder.insertNewLines = false;
			encoder.encode(event.username + ":" + event.password);
			var credentials:String = encoder.flush();
			
			// save the encoded credentials into a shared object
			if (event.remember) {
				userSharedObject.data.token = credentials;
				userSharedObject.flush();
			}
			
			startLoading(credentials);
		}
		
		private function onLoginComplete(event:LoginEvent):void {
			// go and get the server
			serversService.execute(model.user.token);
		}
		
		private function onLoginError(event:ServersEvent):void {
			view.currentState = ApplicationStates.LOGIN;
			Alert.show("An error occured!", "Error");
		}
		
		private function onServersComplete(event:ServersEvent):void {
			// check if local or remote
			// get sections
			// get contents of each available section
			// hide non-available sections!
			
		}
		
		private function onServersError(event:LoginEvent):void {
			Alert.show("An error occured!", "Error");
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