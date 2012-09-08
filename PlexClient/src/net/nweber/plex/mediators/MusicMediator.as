package net.nweber.plex.mediators
{
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.views.MusicView;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class MusicMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var view:MusicView;
		
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
		
		public function MusicMediator() {
			super();
		}
	}
}