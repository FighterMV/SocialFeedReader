package com.rwth.elearning.socialfeedreader.event.facebook
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class SearchFaceBookContentEvent extends CairngormEvent
	{
		
		public static const SEARCH_FACEBOOK_CONTENT_EVENT:String = "searchFaceBookContentEvent";
		
		private var _content:String;
		
		public function SearchFaceBookContentEvent(content:String)
		{
			_content = content;
			super(SEARCH_FACEBOOK_CONTENT_EVENT);
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