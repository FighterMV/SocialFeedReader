package com.rwth.elearning.socialfeedreader.event.facebook
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.model.SocialFeedReaderModelLocator;
	import com.rwth.elearning.socialfeedreader.vo.content.WidgetContentVO;

	public class GetFaceBookContentEvent extends CairngormEvent
	{
		
		public static const GET_FACEBOOK_CONTENT_EVENT:String = "getFaceBookContentEvent";
		
		public function GetFaceBookContentEvent()
		{
			super(GET_FACEBOOK_CONTENT_EVENT);
		}
	}
}