package com.rwth.elearning.socialfeedreader.model
{
	import com.rwth.elearning.socialfeedreader.vo.testBox.TestBoxVO;

	[Bindable]
	public class TestBoxModel
	{
		
		private var _testBox:TestBoxVO = new TestBoxVO();
		
		public function TestBoxModel()
		{
		}
		
		public function get testBox():TestBoxVO{
			return _testBox;
		}
		
		public function set testBox(testBox:TestBoxVO):void{
			_testBox = testBox;
		}
	}
}