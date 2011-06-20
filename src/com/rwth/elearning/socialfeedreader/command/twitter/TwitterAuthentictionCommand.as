package com.rwth.elearning.socialfeedreader.command.twitter
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.TwitterAuthenticationEvent;
	import com.soenkerohde.twitter.ITwitter;
	import com.soenkerohde.twitter.Twitter;

	public class TwitterAuthentictionCommand implements ICommand
	{
		public function TwitterAuthentictionCommand()
		{
		}
		
		public function execute(rawEvent:CairngormEvent):void{
			
			var event:TwitterAuthenticationEvent = TwitterAuthenticationEvent(rawEvent);
			var twitterAPI:ITwitter = new Twitter(event.username, event.password);
			
			twitterAPI.authenticate();
			
		}
	}
}