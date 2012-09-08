package net.nweber.plex.events
{
	import flash.events.Event;
	
	public class SelectionEvent extends Event
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		public static const SELECT_SECTION:String = "selectSection";
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		public var item:Object;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new SelectionEvent(this.type, this.item);
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function SelectionEvent(type:String, item:Object) {
			super(type, false, false);
			this.item = item;
		}
	}
}