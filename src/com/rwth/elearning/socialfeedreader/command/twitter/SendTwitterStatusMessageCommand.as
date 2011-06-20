package com.rwth.elearning.socialfeedreader.command.twitter
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.SendTwitterStatusMessageEvent;
	import com.rwth.elearning.socialfeedreader.model.SocialFeedReaderModelLocator;
	import com.swfjunkie.tweetr.Tweetr;
	import com.swfjunkie.tweetr.events.TweetEvent;
	
	import mx.controls.Alert;
	import mx.events.TweenEvent;

	public class SendTwitterStatusMessageCommand implements ICommand
	{
		public function SendTwitterStatusMessageCommand()
		{
		}
		
		public function execute(rawEvent:CairngormEvent):void{
			var event:SendTwitterStatusMessageEvent = rawEvent as SendTwitterStatusMessageEvent;
			var twitterAPI:Tweetr = SocialFeedReaderModelLocator.getInstance().twitterModel.twitterAPI;
			twitterAPI.addEventListener(TweetEvent.COMPLETE, handleSendRequest);
			twitterAPI.updateStatus(event.message);
		}
		
		private function handleSendRequest(event:TweetEvent):void{
			Alert.show("Successfully posted on Twitter");
		}
	}
}