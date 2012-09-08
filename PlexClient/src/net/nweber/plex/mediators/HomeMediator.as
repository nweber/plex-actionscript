package net.nweber.plex.mediators
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.core.ClassFactory;
	
	import net.nweber.plex.events.SelectionEvent;
	import net.nweber.plex.model.PlexModel;
	import net.nweber.plex.renderers.SectionRenderer;
	import net.nweber.plex.valueObjects.Artist;
	import net.nweber.plex.valueObjects.Movie;
	import net.nweber.plex.valueObjects.Section;
	import net.nweber.plex.valueObjects.Show;
	import net.nweber.plex.views.HomeView;
	
	import org.robotlegs.mvcs.Mediator;
	
	import spark.events.IndexChangeEvent;
	
	public class HomeMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		private static const IMAGE_CYCLE_TIME:Number = 8000;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var view:HomeView;
		
		[Inject]
		public var model:PlexModel;
		
		private var imageCursor:int = 0;
		private var imageCycleTimer:Timer;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function onRegister():void {
			view.sectionsList.itemRenderer = new ClassFactory(SectionRenderer);
			view.sectionsList.dataProvider = model.sections;
			view.sectionsList.addEventListener(IndexChangeEvent.CHANGE, onSectionChange);
			
			imageCycleTimer = new Timer(IMAGE_CYCLE_TIME);
			imageCycleTimer.addEventListener(TimerEvent.TIMER, onImageTimer);
			imageCycleTimer.start();
			
			cycleBackgroudImage();
		}
		
		override public function onRemove():void {
			imageCycleTimer.removeEventListener(TimerEvent.TIMER, onImageTimer);
			imageCycleTimer.stop();
			imageCycleTimer = null;
		}
		
		//----------------------------------------
		//
		//  Internal Methods
		//
		//----------------------------------------
		
		protected function cycleBackgroudImage():void {
			var source:String;
			var useSection:Boolean = false;
			
			switch (imageCursor) {
				case 0:
					if (model.movies && model.movies.length > 0) {
						var movie:Movie = model.movies.getItemAt(Math.random() * model.movies.length) as Movie;
						source = movie.art;
					}
					else {
						useSection = true;
					}
					break;
				case 1:
					if (model.shows && model.shows.length > 0) {
						var show:Show = model.shows.getItemAt(Math.random() * model.shows.length) as Show;
						source = show.art;						
					}
					else {
						useSection = true;
					}
					break;
				case 2:
					if (model.artists && model.artists.length > 0) {
						var artist:Artist = model.artists.getItemAt(Math.random() * model.artists.length) as Artist;
						source = artist.art;
					}
					else {
						useSection = true;
					}
					break;
			}
			
			// last ditch... art doesn't exist, so use stock image
			if (source == null || source == "")
				useSection = true;			
			
			if (useSection) {
				var section:Section = model.sections.getItemAt(imageCursor) as Section;
				source = section.art;
			}
			
			view.background.source = model.serverAddress + source;
			
			imageCursor++;
			if (imageCursor > 2)
				imageCursor = 0;
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onImageTimer(event:TimerEvent):void {
			cycleBackgroudImage();
		}
		
		private function onSectionChange(event:IndexChangeEvent):void {
			dispatch(new SelectionEvent(SelectionEvent.SELECT_SECTION, event.target.selectedItem));
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function HomeMediator() {
			super();
		}
	}
}