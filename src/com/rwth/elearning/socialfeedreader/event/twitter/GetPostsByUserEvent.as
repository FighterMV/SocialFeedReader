package com.rwth.elearning.socialfeedreader.event.twitter
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.vo.content.twitter.TwitterWidgetContentVO;

	public class GetPostsByUserEvent extends CairngormEvent
	{
		
		public static const GET_POST_BY_USER_EVENT:String = "getPostByUserEvent";
		
		private var _username:String;
		private var _twitterContent:TwitterWidgetContentVO;
		
		public function GetPostsByUserEvent(username:String, twitterContent:TwitterWidgetContentVO)
		{
			_username = username;
			_twitterContent = twitterContent;
			super(GET_POST_BY_USER_EVENT);
		}
		
		public function get twitterContent():TwitterWidgetContentVO
		{
			return _twitterContent;
		}

		public function set twitterContent(value:TwitterWidgetContentVO):void
		{
			_twitterContent = value;
		}

		public function set username(username:String):void{
			_username = username;
		}
		
		public function get username():String{
			return _username;
		}
	}
}