package com.rwth.elearning.socialfeedreader.command.facebook
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.facebook.graph.Facebook;
	import com.rwth.elearning.socialfeedreader.event.facebook.SearchFaceBookContentEvent;
	import com.rwth.elearning.socialfeedreader.model.SocialFeedReaderModelLocator;
	import com.rwth.elearning.socialfeedreader.vo.content.PostVO;
	
	import mx.controls.Alert;

	public class SearchFaceBookContentCommand implements ICommand
	{
		public function SearchFaceBookContentCommand()
		{
		}
		
		public function execute(rawEvent:CairngormEvent):void{
			var event:SearchFaceBookContentEvent = rawEvent as SearchFaceBookContentEvent;
			
			Facebook.api("/search?q=" + event.content + "&type=post", resultHandler);
		}
		
		public function resultHandler(result:Object, fail:Object):void{
			if(result != null){
				var maxItems:int = Math.min(result.length, 5);
				for(var i:int = 0; i < maxItems; i++){
					var entry:Object = result[i];
					var postVO:PostVO = new PostVO();
					postVO.username = entry.from.name;
					postVO.date = entry.created_time;
					postVO.plattform = "FaceBook";
					postVO.content = entry.message;
					postVO.userImageUrl = "http://graph.facebook.com/" + entry.from.id + "/picture";
					SocialFeedReaderModelLocator.getInstance().contentModel.currentContent.posts.addItem(postVO);
				}
			}else{
				Alert.show("Could not load FaceBook content");
			}
		}
	}
}