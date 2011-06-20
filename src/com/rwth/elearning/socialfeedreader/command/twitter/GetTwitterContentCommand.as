package com.rwth.elearning.socialfeedreader.command.twitter
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.model.SocialFeedReaderModelLocator;
	import com.rwth.elearning.socialfeedreader.vo.content.PostVO;
	import com.swfjunkie.tweetr.Tweetr;
	import com.swfjunkie.tweetr.events.TweetEvent;
	
	import mx.controls.Alert;

	public class GetTwitterContentCommand implements ICommand
	{
		public function GetTwitterContentCommand()
		{
		}
		
		public function execute(rawEvent:CairngormEvent):void{
			var twitterAPI:Tweetr = SocialFeedReaderModelLocator.getInstance().twitterModel.twitterAPI;
			twitterAPI.addEventListener(TweetEvent.COMPLETE, handleTweetResult);
			twitterAPI.addEventListener(TweetEvent.FAILED, handleFailed);
			twitterAPI.getHomeTimeLine();
		}
		
		
		private function handleTweetResult(event:TweetEvent):void{
			//We are saving the received stuff to our display model
			var maxEntries:int = Math.min(event.responseArray.length, 5);
			for(var i:int = 0; i < maxEntries; i++){
				var currentPost:Object = event.responseArray[i];
				var post:PostVO = new PostVO();
				post.content = currentPost.text;
				post.date = currentPost.createdAt;
				post.plattform = "Twitter";
				post.userImageUrl = currentPost.user.profileImageUrl;
				post.username = currentPost.user.name;
				SocialFeedReaderModelLocator.getInstance().contentModel.currentContent.posts.addItem(post);
			}
		}
		
		private function handleFailed(event:TweetEvent):void{
			Alert.show("Could not get Twitter Content");
		}
		
	}
}