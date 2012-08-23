package net.nweber.plex.services.stub
{
	import net.nweber.plex.events.LoginEvent;
	import net.nweber.plex.parsers.IUserParser;
	import net.nweber.plex.services.ILoginService;
	import net.nweber.plex.valueObjects.User;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StubLoginService extends BaseStubService implements ILoginService
	{
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:IUserParser;
		
		override protected function get stubDataURL():String {
			return "stub/user.xml";
		}
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(credentials:String):void {
			doLoad();
		}
		
		override protected function doParse(data:Object):void {
			var user:User = parser.parse(data);
			dispatch(new LoginEvent(LoginEvent.COMPLETE, user));
		}
		
		override protected function doError():void {
			dispatch(new LoginEvent(LoginEvent.ERROR));
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function StubLoginService() {
			
		}
	}
}