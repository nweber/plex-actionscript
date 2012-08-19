package net.nweber.plex.valueObjects
{
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class QueryParam
	{
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		public var name:String;
		public var value:String;
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function QueryParam(name:String, value:String) {
			this.name = name;
			this.value = value;
		}
	}
}