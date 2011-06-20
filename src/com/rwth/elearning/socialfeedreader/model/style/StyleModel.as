package com.rwth.elearning.socialfeedreader.model.style
{
	import com.rwth.elearning.socialfeedreader.vo.style.main.MainContentVO;
	import com.rwth.elearning.socialfeedreader.vo.style.sender.SenderVO;
	import com.rwth.elearning.socialfeedreader.vo.style.widgets.WidgetVO;

	[Bindable]
	public class StyleModel
	{
		
		private var _mainContent:MainContentVO;
		private var _widget:WidgetVO;
		private var _sender:SenderVO;
		
		public function StyleModel()
		{
			_widget = new WidgetVO();
			_mainContent = new MainContentVO();
			_sender = new SenderVO();
		}

		public function get sender():SenderVO
		{
			return _sender;
		}

		public function set sender(value:SenderVO):void
		{
			_sender = value;
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