package com.rwth.elearning.socialfeedreader.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.rwth.elearning.socialfeedreader.command.facebook.GetFaceBookContentCommand;
	import com.rwth.elearning.socialfeedreader.command.testBox.ChangeTextBoxWidthCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.GetFriendsPostsCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.GetPostsByUserCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.TwitterAuthentictionCommand;
	import com.rwth.elearning.socialfeedreader.event.facebook.GetFaceBookContentEvent;
	import com.rwth.elearning.socialfeedreader.event.testBox.TestBoxEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.GetPostsByUserEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.TwitterAuthenticationEvent;

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
			addCommand(TwitterAuthenticationEvent.TWITTER_AUTHENTICATION_EVENT, TwitterAuthentictionCommand);
			addCommand(GetFaceBookContentEvent.GET_FACEBOOK_CONTENT_EVENT, GetFaceBookContentCommand);
		}
		
	}
}