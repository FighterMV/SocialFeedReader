package com.rwth.elearning.socialfeedreader.command.twitter
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.SearchTwitterContentEvent;
	import com.rwth.elearning.socialfeedreader.model.SocialFeedReaderModelLocator;
	import com.rwth.elearning.socialfeedreader.vo.content.PostVO;
	import com.swfjunkie.tweetr.Tweetr;
	import com.swfjunkie.tweetr.events.TweetEvent;
	
	import mx.controls.Alert;

	public class SearchTwitterContentCommand implements ICommand
	{
		public function SearchTwitterContentCommand()
		{
		}
		
		public function execute(rawEvent:CairngormEvent):void{
			var event:SearchTwitterContentEvent = rawEvent as SearchTwitterContentEvent;
			var twitterAPI:Tweetr = SocialFeedReaderModelLocator.getInstance().twitterModel.twitterAPI;
			twitterAPI.addEventListener(TweetEvent.COMPLETE, handleTweetResult);
			twitterAPI.addEventListener(TweetEvent.FAILED, handleFailed);
			twitterAPI.search(event.content);
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
				post.userImageUrl = currentPost.userProfileImage;
				post.username = currentPost.user;
				SocialFeedReaderModelLocator.getInstance().contentModel.currentContent.posts.addItem(post);
			}
			SocialFeedReaderModelLocator.getInstance().twitterModel.twitterAPI.removeEventListener(TweetEvent.COMPLETE, handleTweetResult);
			SocialFeedReaderModelLocator.getInstance().twitterModel.twitterAPI.removeEventListener(TweetEvent.FAILED, handleFailed);
		}
		
		private function handleFailed(event:TweetEvent):void{
			SocialFeedReaderModelLocator.getInstance().twitterModel.twitterAPI.removeEventListener(TweetEvent.COMPLETE, handleTweetResult);
			SocialFeedReaderModelLocator.getInstance().twitterModel.twitterAPI.removeEventListener(TweetEvent.FAILED, handleFailed);
			Alert.show("Could not get Twitter Content");
		}
	}
}