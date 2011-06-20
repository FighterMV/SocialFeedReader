package com.rwth.elearning.socialfeedreader.model.style
{
	import com.rwth.elearning.socialfeedreader.vo.style.main.MainContentVO;
	import com.rwth.elearning.socialfeedreader.vo.style.widgets.WidgetVO;

	[Bindable]
	public class StyleModel
	{
		
		private var _mainContent:MainContentVO;
		private var _widget:WidgetVO;
		
		public function StyleModel()
		{
			_widget = new WidgetVO();
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

		public function get widget():WidgetVO
		{
			return _widget;
		}

		public function set widget(value:WidgetVO):void
		{
			_widget = value;
		}

	}
}