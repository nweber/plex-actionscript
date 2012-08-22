package net.nweber.plex.events
{
	import flash.events.Event;
	
	import net.nweber.plex.valueObjects.Section;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class SectionsEvent extends Event
	{
		//----------------------------------------
		//
		// Constants
		//
		//----------------------------------------
		
		public static const COMPLETE:String = "sectionsComplete";
		public static const ERROR:String = "sectionsError";
		
		//----------------------------------------
		//
		// Properties
		//
		//----------------------------------------
		
		public var sections:Vector.<Section>;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function clone():Event {
			return new SectionsEvent(this.type, this.sections, this.bubbles, this.cancelable);
		}
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function SectionsEvent(type:String, sections:Vector.<Section>=null, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
			
			this.sections = sections;
		}
	}
}