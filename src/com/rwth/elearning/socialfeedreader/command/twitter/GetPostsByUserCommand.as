package com.rwth.elearning.socialfeedreader.command.twitter
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.event.twitter.GetPostsByUserEvent;
	
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	import flash.system.Security;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;

	public class GetPostsByUserCommand implements ICommand
	{
		public function GetPostsByUserCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void{
			
			Security.allowDomain("*");
			Security.allowInsecureDomain("*");
			Security.loadPolicyFile("https://twitter.com/crossdomain.xml");
			
			var twitterEvent:GetPostsByUserEvent = GetPostsByUserEvent(event);
			
			var httpService:HTTPService = new HTTPService();
			httpService.method = "GET";
			httpService.contentType = "application/xml";
			httpService.resultFormat = "xml";
			httpService.url = "http://eckhard.smashnet.de/proxy.php?username=" + twitterEvent.username;
			httpService.addEventListener(ResultEvent.RESULT, result);
			httpService.addEventListener(FaultEvent.FAULT, fault);
			
			httpService.send();
			
			
		}	
		
		public function result(event:ResultEvent):void{
			Alert.show("success");
		}
		
		public function fault(event:FaultEvent):void{
			Alert.show("Error");
		}
		
	}
}