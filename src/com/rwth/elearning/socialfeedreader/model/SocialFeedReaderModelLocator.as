package com.rwth.elearning.socialfeedreader.model
{
	import com.rwth.elearning.socialfeedreader.model.content.ContentModel;
	import com.rwth.elearning.socialfeedreader.model.network.FaceBookModel;
	import com.rwth.elearning.socialfeedreader.model.style.StyleModel;

	[Bindable]
	public class SocialFeedReaderModelLocator
	{
		
		private static var _modelLocator:SocialFeedReaderModelLocator;
		
		private var _testBoxModel:TestBoxModel;
				
		private var _styleModel:StyleModel;
		
		private var _contentModel:ContentModel;
		
		private var _faceBookModel:FaceBookModel;
		
		public function SocialFeedReaderModelLocator()
		{
			_testBoxModel = new TestBoxModel();
			_styleModel = new StyleModel();
			_contentModel = new ContentModel();
			_faceBookModel = new FaceBookModel();
		}
		
		public function get faceBookModel():FaceBookModel
		{
			return _faceBookModel;
		}

		public function set faceBookModel(value:FaceBookModel):void
		{
			_faceBookModel = value;
		}

		public function get contentModel():ContentModel
		{
			return _contentModel;
		}

		public function set contentModel(value:ContentModel):void
		{
			_contentModel = value;
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