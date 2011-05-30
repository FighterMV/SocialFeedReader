package com.rwth.elearning.socialfeedreader.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.rwth.elearning.socialfeedreader.command.testBox.ChangeTextBoxWidthCommand;
	import com.rwth.elearning.socialfeedreader.command.twitter.GetPostsByUserCommand;
	import com.rwth.elearning.socialfeedreader.event.testBox.TestBoxEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.GetPostsByUserEvent;

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
		}
		
	}
}