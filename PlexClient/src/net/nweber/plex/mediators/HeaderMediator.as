	package net.nweber.plex.mediators
{
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import net.nweber.plex.components.HeaderBar;
	import net.nweber.plex.model.PlexModel;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class HeaderMediator extends Mediator
	{
		//----------------------------------------
		//
		//  Variables
		//
		//----------------------------------------
		
		private var timeTimer:Timer;
		
		//----------------------------------------
		//
		//  Properties
		//
		//----------------------------------------
		
		[Inject]
		public var model:PlexModel;
		
		[Inject]
		public var view:HeaderBar;
		
		//----------------------------------------
		//
		//  Public Methods
		//
		//----------------------------------------
		
		override public function onRegister():void {
			const delay:Number = (1000 * 30);
			timeTimer = new Timer(delay);
			timeTimer.addEventListener(TimerEvent.TIMER, onTimeTimerTick);
			timeTimer.start();
			
			populateDateLabels();
			
			view.userLabel.text = "hi " + model.user.username + "!";
			
			view.logoutButton.addEventListener(MouseEvent.CLICK, onLogoutClick);
		}
		
		//----------------------------------------
		//
		//  Internal Methods
		//
		//----------------------------------------
		
		protected function doLogout():void {
			
		}
		
		protected function populateDateLabels():void {
			var now:Date = new Date();
			
			view.dayLabel.text = getDayString(now.day);
			view.dateLabel.text = getMonthString(now.month) + " " + now.date;
			view.timeLabel.text = getHoursText(now.hours) + ":" + getMinutesText(now.minutes);
			view.amPmLabel.text = getAmPmText(now.hours);
		}
		
		protected function getDayString(day:int):String {
			switch (day) {
				case 0:
					return "sunday";
				case 1:
					return "monday";
				case 2:
					return "tuesday";
				case 3:
					return "wednesday";
				case 4:
					return "thursday";
				case 5:
					return "friday";
				case 6:
					return "saturday";
			}
			
			return "";
		}
		
		protected function getMonthString(day:int):String {
			switch (day) {
				case 0:
					return "january";
				case 1:
					return "february";
				case 2:
					return "march";
				case 3:
					return "april";
				case 4:
					return "may";
				case 5:
					return "june";
				case 6:
					return "july";
				case 7:
					return "august";
				case 8:
					return "september";
				case 9:
					return "october";
				case 10:
					return "november";
				case 11:
					return "december";
			}
			
			return "";
		}
		
		protected function getHoursText(hours:int):String {
			hours = (hours > 12) ? hours - 12 : hours;
			if (hours == 0) hours = 12;
			return formatNumber(hours, 2);
		}
		
		protected function getMinutesText(minutes:int):String {
			return formatNumber(minutes, 2);
		}
		
		protected function formatNumber(num:int, precision:int):String {
			var str:String = num.toString();
			while (str.length < precision) {
				str = "0" + str;
			}
			return str;
		}
		
		protected function getAmPmText(hours:int):String {
			if (hours > 12) {
				return "pm";
			}
			else {
				return "am";
			}
		}
		
		//----------------------------------------
		//
		//  Handlers
		//
		//----------------------------------------
		
		private function onTimeTimerTick(event:TimerEvent):void {
			populateDateLabels();
		}
		
		private function onLogoutClick(event:MouseEvent):void {
			doLogout();
		}
		
		//----------------------------------------
		//
		//  Constructor
		//
		//----------------------------------------
		
		public function HeaderMediator() {
			super();
		}
	}
}