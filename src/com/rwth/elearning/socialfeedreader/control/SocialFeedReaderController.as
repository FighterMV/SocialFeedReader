package com.rwth.elearning.socialfeedreader.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.rwth.elearning.socialfeedreader.command.facebook.GetFaceBookContentCommand;
	import com.rwth.elearning.socialfeedreader.command.facebook.SearchFaceBookContentCommand;
	import com.rwth.elearning.socialfeedreader.command.facebook.SendFaceBookStatusMessageCommand;
	import com.rwth.elearning.socialfeedreader.command.testBox.ChangeTextBoxWidthCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.GetPostsByUserCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.GetTwitterContentCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.SearchTwitterContentCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.SendTwitterStatusMessageCommand;
	import com.rwth.elearning.socialfeedreader.event.facebook.GetFaceBookContentEvent;
	import com.rwth.elearning.socialfeedreader.event.facebook.SearchFaceBookContentEvent;
	import com.rwth.elearning.socialfeedreader.event.facebook.SendFaceBookStatusMessageEvent;
	import com.rwth.elearning.socialfeedreader.event.testBox.TestBoxEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.GetPostsByUserEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.GetTwitterContentEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.SearchTwitterContentEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.SendTwitterStatusMessageEvent;

	public class SocialFeedReaderController extends FrontController
	{
		public function SocialFeedReaderController()
		{
			initCommands();
		}
		
		public function initCommands():void{
			trace("Initialising the commands");
			addCommand(TestBoxEvent.TEST_EVENT, ChangeTextBoxWidthCommand);			
			addCommand(GetPostsByUserEvent.GET_POST_BY_USER_EVENT, GetPostsByUserCommand);			
			
			addCommand(GetFaceBookContentEvent.GET_FACEBOOK_CONTENT_EVENT, GetFaceBookContentCommand);
			addCommand(SendFaceBookStatusMessageEvent.SEND_FACEBOOK_STATUS_MESSAGE_EVENT, SendFaceBookStatusMessageCommand);
			addCommand(SearchFaceBookContentEvent.SEARCH_FACEBOOK_CONTENT_EVENT, SearchFaceBookContentCommand);
			
			addCommand(GetTwitterContentEvent.GET_TWITTER_CONTENT_EVENT, GetTwitterContentCommand);
			addCommand(SendTwitterStatusMessageEvent.SEND_TWITTER_STATUS_MESSAGE_EVENT, SendTwitterStatusMessageCommand);
			addCommand(SearchTwitterContentEvent.SEARCH_TWITTER_CONTENT_EVENT, SearchTwitterContentCommand);
		}
		
	}
}