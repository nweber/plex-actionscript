package net.nweber.plex.components
{
	import flash.events.Event;
	
	import mx.events.EffectEvent;
	
	import spark.components.Image;
	import spark.effects.Animate;
	import spark.effects.animation.MotionPath;
	import spark.effects.animation.SimpleMotionPath;
	
	public class TransitionImage extends Image
	{
		//----------------------------------------
		//
		//  Constants
		//
		//----------------------------------------
		
		private static const TRANSITION_DURATION:Number = 300;
		
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		private var pendingSource:Object = null;
		private var pendingSourceChanged:Boolean = false;
		private var effect:Animate;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		override public function set source(value:Object):void {
			if (source != null) {
				pendingSource = value;
				
				pendingSourceChanged = true;
				invalidateProperties();
			}
			else {
				super.source = value;
			}
		}
		
		//----------------------------------------
		//
		//  Internal Methods
		//
		//----------------------------------------
		
		protected function createEnterEffect():Animate {
			var e:Animate = new Animate(this);
			e.motionPaths = new Vector.<MotionPath>();
			e.motionPaths.push(new SimpleMotionPath('alpha', 0, 1));
			e.duration = TRANSITION_DURATION;
			return e;
		}
		
		protected function createExitEffect():Animate {
			var e:Animate = new Animate(this);
			e.motionPaths = new Vector.<MotionPath>();
			e.motionPaths.push(new SimpleMotionPath('alpha', 1, 0));
			e.duration = TRANSITION_DURATION;
			return e;
		}
		
		//----------------------------------------
		//
		//  Lifecycle
		//
		//----------------------------------------
		
		override protected function commitProperties():void {
			super.commitProperties();
			
			if (pendingSourceChanged) {
				pendingSourceChanged = false;
				
				effect = createExitEffect();
				effect.addEventListener(EffectEvent.EFFECT_END, onExitEffectEnd);
				effect.play();
			}
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onEnterEffectEnd(event:EffectEvent):void {
			effect.removeEventListener(EffectEvent.EFFECT_END, onEnterEffectEnd);
			effect = null;
		}
		
		private function onExitEffectEnd(event:EffectEvent):void {
			effect.removeEventListener(EffectEvent.EFFECT_END, onExitEffectEnd);
			effect = null;
			
			super.source = pendingSource;
			pendingSource = null;
			
			effect = createEnterEffect();
			effect.addEventListener(EffectEvent.EFFECT_END, onEnterEffectEnd);
			effect.play();
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function TransitionImage() {
			super();
		}
	}
}