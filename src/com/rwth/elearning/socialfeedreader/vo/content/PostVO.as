package com.rwth.elearning.socialfeedreader.vo.content
{
	import mx.controls.Image;

	public class PostVO
	{
		
		private var _username:String;
		private var _userImageUrl:String;
		private var _date:String;
		private var _content:String;
		
		private var _plattform:String
		
		public function PostVO()
		{
		}

		public function get plattform():String
		{
			return _plattform;
		}

		public function set plattform(value:String):void
		{
			_plattform = value;
		}

		public function get userImageUrl():String
		{
			return _userImageUrl;
		}

		public function set userImageUrl(value:String):void
		{
			_userImageUrl = value;
		}

		public function get date():String
		{
			return _date;
		}

		public function set date(value:String):void
		{
			_date = value;
		}

		public function get username():String
		{
			return _username;
		}

		public function set username(value:String):void
		{
			_username = value;
		}

		public function get content():String
		{
			return _content;
		}

		public function set content(value:String):void
		{
			_content = value;
		}

	}
}