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

	public class GetPostsByUserCommand implements ICommand
	{
		public function GetPostsByUserCommand()
		{
		}
		
		public function execute(event:CairngormEvent):void{
			
			Security.allowDomain("*");
			Security.allowInsecureDomain("*");
			Security.loadPolicyFile("https://twitter.com/crossdomain.xml");

			
			trace("Starting to get posts by user");
			
			var twitterEvent:GetPostsByUserEvent = GetPostsByUserEvent(event);
			
			//var urlRequest:URLRequest = new URLRequest("http://search.twitter.com/search.atom?q=from%3" + twitterEvent.username);
			var urlRequest:URLRequest = new URLRequest("http://api.twitter.com/1/users/show/elchen1988.xml");
			
			
			var loader:Loader = new Loader();
			loader.addEventListener(Event.COMPLETE, receivedData);
			loader.addEventListener(IOErrorEvent.IO_ERROR, error);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityError);
			loader.load(urlRequest);
			
			Alert.show("Sending url: " + urlRequest.url);
			trace("Sending url: " + urlRequest.url);
			
		}		
		
		private function receivedData(event:Event):void {
			trace("Received data for user");
			Alert.show("success");
			var test:int;
		}
		private function error(event:Event):void {
			Alert.show("error");
			trace("failed to receive data for user");
		}
		private function securityError(event:Event):void {
			Alert.show("security error");
			trace("failed to receive data for user");
		}
		
	}
}