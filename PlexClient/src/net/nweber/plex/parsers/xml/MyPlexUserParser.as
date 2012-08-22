package net.nweber.plex.parsers.xml
{
	import net.nweber.plex.parsers.IUserParser;
	import net.nweber.plex.valueObjects.User;
	
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class MyPlexUserParser implements IUserParser
	{
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		/*
		<user>
			<username>some_guy</username>
			<email>somebody@gmail.com</email>
			<joined-at type="datetime">2012-08-01T02:21:02Z</joined-at>
			<authentication-token>xxxxxxxxxxxxxxxxxxxxx</authentication-token>
		</user>
		*/
		
		public function parse(value:Object):User {
			var data:XML = new XML(value);
			
			var username:String = data["username"];
			var token:String = data["authentication-token"];
			
			return new User(username, token);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function MyPlexUserParser() {
			
		}
	}
}