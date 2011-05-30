package com.rwth.elearning.socialfeedreader.model
{
	import com.rwth.elearning.socialfeedreader.model.style.StyleModel;

	[Bindable]
	public class SocialFeedReaderModelLocator
	{
		
		private static var _modelLocator:SocialFeedReaderModelLocator;
		
		private var _testBoxModel:TestBoxModel;
				
		private var _styleModel:StyleModel;
		
		public function SocialFeedReaderModelLocator()
		{
			_testBoxModel = new TestBoxModel();
			_styleModel = new StyleModel();
		}
		
		public function get styleModel():StyleModel
		{
			return _styleModel;
		}

		public function set styleModel(value:StyleModel):void
		{
			_styleModel = value;
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