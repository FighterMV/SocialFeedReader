package com.rwth.elearning.socialfeedreader.vo.twitter
{
	import mx.controls.Image;

	[Bindable]
	public class PostVO
	{
		
		private var _username:String;
		private var _image:Image;
		private var _text:String;
		private var _date:Date;
		
		public function PostVO()
		{
		}
		
		
		public function get date():Date
		{
			return _date;
		}

		public function set date(value:Date):void
		{
			_date = value;
		}

		public function get text():String
		{
			return _text;
		}

		public function set text(value:String):void
		{
			_text = value;
		}

		public function get image():Image
		{
			return _image;
		}

		public function set image(value:Image):void
		{
			_image = value;
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