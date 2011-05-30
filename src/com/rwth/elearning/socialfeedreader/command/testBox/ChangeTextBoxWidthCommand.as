package com.rwth.elearning.socialfeedreader.command.testBox
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.event.testBox.TestBoxEvent;
	import com.rwth.elearning.socialfeedreader.vo.testBox.TestBoxVO;

	public class ChangeTextBoxWidthCommand implements ICommand
	{
		public function ChangeTextBoxWidthCommand()
		{
		}
		
		/**
		 * Step 2: The Command
		 * This is the Controller part of the MVC pattern. We get the new width and the box from the event and
		 * set the new width in the TextBoxVO.
		 * Open the TextBoxVO to see step 3.
		 **/		
		public function execute(rawEvent:CairngormEvent):void{
			var testEvent:TestBoxEvent = TestBoxEvent(rawEvent);
			var testBoxVO:TestBoxVO = testEvent.testBoxVO;
			var newWidth:int = testEvent.newWidth;
			
			//saving the new width
			testBoxVO.width = newWidth;
		}
	}
}