package com.rwth.elearning.socialfeedreader.event.twitter
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class SendTwitterStatusMessageEvent extends CairngormEvent
	{
		
		public static const SEND_TWITTER_STATUS_MESSAGE_EVENT:String = "sendTwitterStatusMessageEvent";
		
		private var _message:String;
		
		public function SendTwitterStatusMessageEvent(message:String)
		{
			super(SEND_TWITTER_STATUS_MESSAGE_EVENT);
			_message = message;
		}

		public function get message():String
		{
			return _message;
		}

		public function set message(value:String):void
		{
			_message = value;
		}

	}
}