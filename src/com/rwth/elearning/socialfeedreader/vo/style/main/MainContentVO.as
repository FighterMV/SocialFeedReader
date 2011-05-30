package com.rwth.elearning.socialfeedreader.vo.style.main
{
	[Bindable]
	public class MainContentVO
	{
		
		private var _backgroundColor:Number;
		private var _alpha:Number;
		
		public function MainContentVO()
		{
			_backgroundColor = 0xFFFFFF;
			_alpha = 1;
		}

		public function get alpha():Number
		{
			return _alpha;
		}

		public function set alpha(value:Number):void
		{
			_alpha = value;
		}

		public function get backgroundColor():Number
		{
			return _backgroundColor;
		}

		public function set backgroundColor(value:Number):void
		{
			_backgroundColor = value;
		}

	}
}