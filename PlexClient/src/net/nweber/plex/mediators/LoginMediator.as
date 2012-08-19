package net.nweber.plex.mediators
{
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import net.nweber.plex.events.LoginEvent;
	import net.nweber.plex.views.LoginView;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class LoginMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var view:LoginView;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function onRegister():void {
			view.loginButton.addEventListener(MouseEvent.CLICK, onLoginClick);
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onLoginClick(event:MouseEvent):void {
			var username:String = view.usernameField.text;
			var password:String = view.passwordField.text;
			
			if (username == null || username.length == 0) {
				Alert.show("Please enter a username.", "Error");
				return;
			}
			
			if (password == null || password.length == 0) {
				Alert.show("Please enter a password.", "Error");
				return;
			}
			
			var remember:Boolean = view.rememberField.selected;
			
			dispatch(new LoginEvent(LoginEvent.EXECUTE, username, password, remember));
			
			view.usernameField.text = "";
			view.passwordField.text = "";
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function LoginMediator() {
			super();
		}
	}
}