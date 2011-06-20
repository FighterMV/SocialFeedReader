package com.rwth.elearning.socialfeedreader.event.facebook
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class SendFaceBookStatusMessageEvent extends CairngormEvent
	{
		
		public static const SEND_FACEBOOK_STATUS_MESSAGE_EVENT:String = "sendFaceBookStatusMessageEvent";
		
		private var _message:String;
		
		public function SendFaceBookStatusMessageEvent(message:String)
		{
			_message = message;
			super(SEND_FACEBOOK_STATUS_MESSAGE_EVENT);
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