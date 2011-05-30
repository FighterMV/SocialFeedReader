package com.rwth.elearning.socialfeedreader.model.style
{
	import com.rwth.elearning.socialfeedreader.vo.style.main.MainContentVO;
	import com.rwth.elearning.socialfeedreader.vo.style.widgets.TwitterWidgetVO;

	[Bindable]
	public class StyleModel
	{
		
		private var _mainContent:MainContentVO;
		private var _twitterWidget:TwitterWidgetVO;
		
		public function StyleModel()
		{
			_twitterWidget = new TwitterWidgetVO();
			_mainContent = new MainContentVO();
		}

		public function get mainContent():MainContentVO
		{
			return _mainContent;
		}

		public function set mainContent(value:MainContentVO):void
		{
			_mainContent = value;
		}

		public function get twitterWidget():TwitterWidgetVO
		{
			return _twitterWidget;
		}

		public function set twitterWidget(value:TwitterWidgetVO):void
		{
			_twitterWidget = value;
		}

	}
}