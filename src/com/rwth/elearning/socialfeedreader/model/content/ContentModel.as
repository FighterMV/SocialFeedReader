package com.rwth.elearning.socialfeedreader.model.content
{
	import com.rwth.elearning.socialfeedreader.vo.content.WidgetContentVO;

	[Bindable]
	public class ContentModel
	{
		
		private var _currentContent:WidgetContentVO;
		
		public function ContentModel()
		{
			_currentContent = new WidgetContentVO();
		}

		public function get currentContent():WidgetContentVO
		{
			return _currentContent;
		}

		public function set currentContent(value:WidgetContentVO):void
		{
			_currentContent = value;
		}

	}
}