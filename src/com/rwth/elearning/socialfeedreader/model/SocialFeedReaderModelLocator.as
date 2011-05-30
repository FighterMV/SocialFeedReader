package com.rwth.elearning.socialfeedreader.model
{
	import com.rwth.elearning.socialfeedreader.model.twitter.TwitterModel;

	[Bindable]
	public class SocialFeedReaderModelLocator
	{
		
		private static var _modelLocator:SocialFeedReaderModelLocator;
		
		private var _testBoxModel:TestBoxModel;
		
		private var _twitterModel:TwitterModel;
		
		public function SocialFeedReaderModelLocator()
		{
			_testBoxModel = new TestBoxModel();
			_twitterModel = new TwitterModel();
		}
		
		public function get twitterModel():TwitterModel
		{
			return _twitterModel;
		}

		public function set twitterModel(value:TwitterModel):void
		{
			_twitterModel = value;
		}

		public static function getInstance():SocialFeedReaderModelLocator{
			if(_modelLocator == null){
				_modelLocator = new SocialFeedReaderModelLocator();
			}
			return _modelLocator;
		}
		
		public function get testBoxModel():TestBoxModel{
			return _testBoxModel;
		}
	}
}