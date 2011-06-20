package com.rwth.elearning.socialfeedreader.command.facebook
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.facebook.graph.FacebookDesktop;
	import com.rwth.elearning.socialfeedreader.event.facebook.SendFaceBookStatusMessageEvent;
	
	import mx.controls.Alert;

	public class SendFaceBookStatusMessageCommand implements ICommand
	{
		public function SendFaceBookStatusMessageCommand()
		{
		}
		
		public function execute(rawEvent:CairngormEvent):void{
			
			var event:SendFaceBookStatusMessageEvent = rawEvent as SendFaceBookStatusMessageEvent;
			
			var params:Object = {message: event.message};
			
			FacebookDesktop.api("/me/feed", resultHandler, params);
			
		}
		
		private function resultHandler(result:Object, fail:Object):void{
			if(result != null){
				Alert.show("Published to Facebook");
			}else if(fail != null){
				Alert.show("Posting on Facebook failed");
			}
		}
	}
}