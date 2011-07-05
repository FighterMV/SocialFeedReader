package com.rwth.elearning.socialfeedreader.event.twitter
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class SearchTwitterContentEvent extends CairngormEvent
	{
		
		public static const SEARCH_TWITTER_CONTENT_EVENT:String = "searchTwitterContentEvent";
		
		private var _content:String;
		
		public function SearchTwitterContentEvent(content:String)
		{
			_content = content;
			super(SEARCH_TWITTER_CONTENT_EVENT);
		}

		public function get content():String
		{
			return _content;
		}

		public function set content(value:String):void
		{
			_content = value;
		}

	}
}