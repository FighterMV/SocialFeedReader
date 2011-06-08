package com.rwth.elearning.socialfeedreader.model.content
{
	import com.rwth.elearning.socialfeedreader.vo.content.twitter.TwitterWidgetContentVO;

	[Bindable]
	public class ContentModel
	{
		
		private var _twitterContent:TwitterWidgetContentVO;
		
		public function ContentModel()
		{
			_twitterContent = new TwitterWidgetContentVO();
		}

		public function get twitterContent():TwitterWidgetContentVO
		{
			return _twitterContent;
		}

		public function set twitterContent(value:TwitterWidgetContentVO):void
		{
			_twitterContent = value;
		}

	}
}