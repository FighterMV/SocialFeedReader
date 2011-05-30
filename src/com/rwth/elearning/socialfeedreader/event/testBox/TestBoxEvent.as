package com.rwth.elearning.socialfeedreader.event.testBox
{
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.rwth.elearning.socialfeedreader.model.SocialFeedReaderModelLocator;
	import com.rwth.elearning.socialfeedreader.vo.testBox.TestBoxVO;

	public class TestBoxEvent extends CairngormEvent
	{
		
		public static const TEST_EVENT:String = "testEvent";
		
		private var _newWidth:int;
		private var _testBoxVO:TestBoxVO;
		
		public function TestBoxEvent(newWidth:int, testBoxVO:TestBoxVO)
		{
			_newWidth = newWidth;
			_testBoxVO = testBoxVO;
			super(TEST_EVENT);
		}
		
		public function get newWidth():int{
			return _newWidth;
		}
		
		public function set newWidth(newWidth:int):void{
			_newWidth = newWidth;
		}
		
		public function get testBoxVO():TestBoxVO{
			return _testBoxVO;
		}
		
		public function set testBoxVO(testBoxVO:TestBoxVO):void{
			_testBoxVO = testBoxVO;
		}
	}
}