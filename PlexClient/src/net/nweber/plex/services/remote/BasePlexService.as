package net.nweber.plex.services.remote
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import net.nweber.plex.model.PlexModel;
	
	import org.robotlegs.mvcs.Actor;
	
	public class BasePlexService extends Actor
	{
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		private var loader:URLLoader;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var model:PlexModel;
		
		//----------------------------------------
		//
		//  Internal Methods
		//
		//----------------------------------------
		
		protected function doLoad(service:String):void {
			if (service.charAt(0) != "/") {
				service = "/" + service;
			}
			
			var url:String = model.serverAddress + service;
			
			loader = new URLLoader(new URLRequest(url));
			loader.addEventListener(Event.COMPLETE, onComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onError);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
		}
		
		protected function processComplete(data:Object):void {
			
		}
		
		protected function processError():void {
			
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onComplete(event:Event):void {
			processComplete(loader.data);
		}
		
		private function onError(event:Event):void {
			processError();
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function BasePlexService() {
			super();
		}
	}
}