package net.nweber.plex.services.stub
{
	import net.nweber.plex.events.LoginEvent;
	import net.nweber.plex.parsers.IUserParser;
	import net.nweber.plex.services.ILoginService;
	import net.nweber.plex.valueObjects.User;
	
	import org.robotlegs.mvcs.Actor;

	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class StubLoginService extends Actor implements ILoginService
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		private static const STUB_DATA:XML = <user>
											   <username>test guy</username>
											   <email>somebody@gmail.com</email>
											   <joined-at type="datetime">2012-08-01T02:21:02Z</joined-at>
											   <authentication-token>UBpNe8anKWhs6764sjUC</authentication-token>
											 </user>;
		
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		[Inject]
		public var parser:IUserParser;
		
		//----------------------------------------
		//
		// Public Methods
		//
		//----------------------------------------
		
		public function execute(credentials:String):void {
			var user:User = parser.parse(STUB_DATA);
			dispatch(new LoginEvent(LoginEvent.COMPLETE, user));
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