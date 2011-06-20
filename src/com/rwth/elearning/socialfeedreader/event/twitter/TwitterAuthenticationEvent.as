package com.rwth.elearning.socialfeedreader.event.twitter
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class TwitterAuthenticationEvent extends CairngormEvent
	{
		
		public static const TWITTER_AUTHENTICATION_EVENT:String = "twitterAuthenticationEvent";
		
		private var _username:String;
		private var _password:String;
		
		public function TwitterAuthenticationEvent(username:String, password:String)
		{
			_username = username;
			_password = password;
			super(TWITTER_AUTHENTICATION_EVENT);
		}

		public function get password():String
		{
			return _password;
		}

		public function set password(value:String):void
		{
			_password = value;
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