package com.rwth.elearning.socialfeedreader.model.network
{
	[Bindable]
	public class FaceBookModel
	{
		
		private var _currentUserId:String;
		private var _currentUsername:String;
		private var _accessToken:String;
		
		public function FaceBookModel()
		{
		}

		public function get accessToken():String
		{
			return _accessToken;
		}

		public function set accessToken(value:String):void
		{
			_accessToken = value;
		}

		public function get currentUsername():String
		{
			return _currentUsername;
		}

		public function set currentUsername(value:String):void
		{
			_currentUsername = value;
		}

		public function get currentUserId():String
		{
			return _currentUserId;
		}

		public function set currentUserId(value:String):void
		{
			_currentUserId = value;
		}

	}
}