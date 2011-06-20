package com.rwth.elearning.socialfeedreader.model.network
{
	import com.swfjunkie.tweetr.Tweetr;
	

	[Bindable]
	public class TwitterModel
	{
		
		private var _twitterAPI:Tweetr;
		
		private var _pin:String;
		
		public function TwitterModel()
		{
			_twitterAPI = new Tweetr();
		}

		public function get pin():String
		{
			return _pin;
		}

		public function set pin(value:String):void
		{
			_pin = value;
		}

		public function get twitterAPI():Tweetr
		{
			return _twitterAPI;
		}

		public function set twitterAPI(value:Tweetr):void
		{
			_twitterAPI = value;
		}

	}
}