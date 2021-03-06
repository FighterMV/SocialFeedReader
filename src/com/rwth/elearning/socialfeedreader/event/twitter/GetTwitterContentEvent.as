package com.rwth.elearning.socialfeedreader.event.twitter
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetTwitterContentEvent extends CairngormEvent
	{
		
		public static const GET_TWITTER_CONTENT_EVENT:String = "getTwitterContentEvent";
		
		private var _username:String;
		private var _twitterContent:String;
		
		public function GetTwitterContentEvent()
		{
			super(GET_TWITTER_CONTENT_EVENT);
		}

		public function get twitterContent():String
		{
			return _twitterContent;
		}

		public function set twitterContent(value:String):void
		{
			_twitterContent = value;
		}

		public function get username():String
		{
			return _username;
		}

		public function set username(value:String):void
		{
			_username = value;
		}

	}
}