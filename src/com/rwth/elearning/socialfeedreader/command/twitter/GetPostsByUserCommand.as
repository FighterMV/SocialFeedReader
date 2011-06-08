package com.rwth.elearning.socialfeedreader.command.twitter
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.GetPostsByUserEvent;
	import com.rwth.elearning.socialfeedreader.util.assembler.twitter.TwitterUserXmlToTwitterStatusVOAssembler;
	import com.rwth.elearning.socialfeedreader.vo.content.twitter.TwitterPostVO;
	import com.rwth.elearning.socialfeedreader.vo.content.twitter.TwitterWidgetContentVO;
	
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import flash.system.Security;
	import flash.xml.XMLNode;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;

	public class GetPostsByUserCommand implements ICommand
	{
		
		private var twitterContent:TwitterWidgetContentVO;
		
		public function GetPostsByUserCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void{
			
			var twitterEvent:GetPostsByUserEvent = GetPostsByUserEvent(event);
			
			this.twitterContent = twitterEvent.twitterContent;
			
			var httpService:HTTPService = new HTTPService();
			httpService.method = "GET";
			httpService.contentType = "application/xml";
			httpService.resultFormat = "xml";
			httpService.url = "http://eckhard.smashnet.de/proxy2.php?url=http://api.twitter.com/1/statuses/user_timeline.xml?screen_name=" + twitterEvent.username;
			httpService.addEventListener(ResultEvent.RESULT, result);
			httpService.addEventListener(FaultEvent.FAULT, fault);
			
			httpService.send();
			
			
		}	
		
		public function result(event:ResultEvent):void{
			try{
				var xmlNode:XMLNode = event.result as XMLNode;
				var assembler:TwitterUserXmlToTwitterStatusVOAssembler = new TwitterUserXmlToTwitterStatusVOAssembler();
				var currentContent:TwitterWidgetContentVO = assembler.assemble(xmlNode);
				this.twitterContent.posts = currentContent.posts;
			}catch(error:Error){
				Alert.show("Username not found! Learn typing - noob!");
			}			
		}
		
		public function fault(event:FaultEvent):void{
			Alert.show("Error");
		}
		
	}
}