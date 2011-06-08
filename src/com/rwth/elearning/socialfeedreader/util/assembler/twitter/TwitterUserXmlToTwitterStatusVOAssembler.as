package com.rwth.elearning.socialfeedreader.util.assembler.twitter
{
	import com.rwth.elearning.socialfeedreader.vo.content.twitter.TwitterPostVO;
	import com.rwth.elearning.socialfeedreader.vo.content.twitter.TwitterWidgetContentVO;
	
	import flash.xml.XMLNode;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	public class TwitterUserXmlToTwitterStatusVOAssembler
	{
		
		private var posts:ArrayCollection = new ArrayCollection();
		
		public function TwitterUserXmlToTwitterStatusVOAssembler()
		{
		}
		
		public function assemble(xml:XMLNode):TwitterWidgetContentVO{			
			
			if(xml == null){
				throw new Error("did not got any response");
			}
			
			var twitterWidgetContent:TwitterWidgetContentVO = new TwitterWidgetContentVO();
			
			for each(var childNode:XMLNode in xml.childNodes){
				if(childNode.nodeName == "status"){
					var post:TwitterPostVO = assemblePostInformation(childNode);
					posts.addItem(post);
				}
			}
			
			twitterWidgetContent.posts = this.posts;
			
			return twitterWidgetContent;
		}
		
		private function assemblePostInformation(xml:XMLNode):TwitterPostVO{
			var post:TwitterPostVO = new TwitterPostVO();
			for each(var childNode:XMLNode in xml.childNodes){
				if(childNode.nodeName == "text"){
					post.content = childNode.firstChild.nodeValue;
				}
				if(childNode.nodeName == "created_at"){
					post.date = childNode.firstChild.nodeValue;
				}
				if(childNode.nodeName == "user"){
					for each(var userAttributeNode:XMLNode in childNode.childNodes){
						if(userAttributeNode.nodeName == "screen_name"){
							post.username = userAttributeNode.firstChild.nodeValue;
						}
						if(userAttributeNode.nodeName == "profile_image_url"){
							post.userImageUrl = userAttributeNode.firstChild.nodeValue;
						}
					}
				}
			}
			return post;
		}
	}
}