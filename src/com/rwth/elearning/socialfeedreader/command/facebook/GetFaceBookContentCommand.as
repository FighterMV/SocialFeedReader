package com.rwth.elearning.socialfeedreader.command.facebook
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.facebook.graph.FacebookDesktop;
	import com.rwth.elearning.socialfeedreader.model.SocialFeedReaderModelLocator;
	import com.rwth.elearning.socialfeedreader.vo.content.PostVO;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;

	public class GetFaceBookContentCommand implements ICommand
	{
		public function GetFaceBookContentCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void{
									
			FacebookDesktop.api("/me/home", resultHandler);			
			
		}	
		
		public function resultHandler(result:Object, fail:Object):void{
			//Adding posts to the displayed post list	
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
				Alert.show("Could not get FaceBook Content");
			}
		}
		
		//http://graph.facebook.com/59261801728/picture 
	}
}