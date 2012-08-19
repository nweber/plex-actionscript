package net.nweber.plex.mediators
{
	import mx.events.FlexEvent;
	
	import net.nweber.plex.components.LoadingSpinner;
	
	import org.robotlegs.mvcs.Mediator;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class LoadingMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var view:LoadingSpinner;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function onRegister():void {
			if (view.visible) {
				view.startAnimation();
			}
			
			view.addEventListener(FlexEvent.SHOW, onShow);
			view.addEventListener(FlexEvent.HIDE, onHide);
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onShow(event:FlexEvent):void {
			view.startAnimation();
		}
		
		private function onHide(event:FlexEvent):void {
			view.stopAnimation();
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function LoadingMediator() {
			super();
		}
	}
}