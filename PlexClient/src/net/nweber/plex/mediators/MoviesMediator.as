package net.nweber.plex.mediators
{
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.views.MoviesView;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class MoviesMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var view:MoviesView;
		
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
		
		public function MoviesMediator() {
			super();
		}
	}
}