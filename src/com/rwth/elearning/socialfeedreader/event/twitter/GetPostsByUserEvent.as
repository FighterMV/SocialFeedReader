package com.rwth.elearning.socialfeedreader.event.twitter
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class GetPostsByUserEvent extends CairngormEvent
	{
		
		public static const GET_POST_BY_USER_EVENT:String = "getPostByUserEvent";
		
		private var _username:String;
		
		public function GetPostsByUserEvent(username:String)
		{
			_username = username;
			super(GET_POST_BY_USER_EVENT);
		}
		
		public function set username(username:String):void{
			_username = username;
		}
		
		public function get username():String{
			return _username;
		}
	}
}