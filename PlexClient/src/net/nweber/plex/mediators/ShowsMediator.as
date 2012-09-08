package net.nweber.plex.mediators
{
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.views.ShowsView;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ShowsMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var view:ShowsView;
		
		[Inject]
		public var model:PlexModel;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function onRegister():void {
			
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function ShowsMediator() {
			super();
		}
	}
}