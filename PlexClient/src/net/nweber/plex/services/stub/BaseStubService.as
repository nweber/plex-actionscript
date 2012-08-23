package net.nweber.plex.services.stub
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 * 
	 * 
	 * @author Nathan Weber
	 */
	public class BaseStubService extends Actor
	{
		//----------------------------------------
		//
		// Variables
		//
		//----------------------------------------
		
		private var loader:URLLoader;
		
		protected function get stubDataURL():String {
			throw new Error("Subclass must define a stub data url!");
		}
		
		//----------------------------------------
		//
		// Internal Methods
		//
		//----------------------------------------
		
		protected function doLoad():void {
			var req:URLRequest = new URLRequest(stubDataURL);
			
			init();
			loader.load(req);
		}
		
		protected function init():void {
			loader.addEventListener(Event.COMPLETE, onComplete);
			loader.addEventListener(IOErrorEvent.IO_ERROR, onError);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
		}
		
		protected function clear():void {
			loader.removeEventListener(Event.COMPLETE, onComplete);
			loader.removeEventListener(IOErrorEvent.IO_ERROR, onError);
			loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, onError);
		}
		
		protected function doParse(data:Object):void {
			throw new Error("Subclass must parse data!");
		}
		
		protected function doError():void {
			throw new Error("Subclass must dispatch error!");
		}
		
		//----------------------------------------
		//
		// Handlers
		//
		//----------------------------------------
		
		private function onComplete(event:Event):void {
			clear();
			doParse(loader.data);
		}
		
		private function onError(event:Event):void {
			clear();
			doError();
		}
		
		//----------------------------------------
		//
		// Constructor
		//
		//----------------------------------------
		
		public function BaseStubService() {
			loader = new URLLoader();
		}
	}
}