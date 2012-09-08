package net.nweber.plex.events
{
	import flash.events.Event;
	
	import mx.collections.ArrayList;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class SectionContentsEvent extends Event
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		public static const COMPLETE:String = "sectionContentsComplete";
		public static const ERROR:String = "sectionContentError";
		
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		public var items:ArrayList;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new SectionContentsEvent(this.type, this.items, this.bubbles, this.cancelable);
		}
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function SectionContentsEvent(type:String, items:ArrayList=null, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			
			this.items = items;
		}
	}
}