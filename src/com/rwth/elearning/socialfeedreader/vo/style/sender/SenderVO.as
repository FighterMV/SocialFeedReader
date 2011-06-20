package com.rwth.elearning.socialfeedreader.vo.style.sender
{
	[Bindable]
	public class SenderVO
	{
		
		private var _x:int;
		private var _y:int;
		private var _width:int;
		private var _height:int;
		
		public function SenderVO()
		{
			_x = 100;
			_y = 400;
			_width = 200;
			_height = 50;
		}
		
		
		public function get height():int
		{
			return _height;
		}

		public function set height(value:int):void
		{
			_height = value;
		}

		public function get width():int
		{
			return _width;
		}

		public function set width(value:int):void
		{
			_width = value;
		}

		public function get y():int
		{
			return _y;
		}

		public function set y(value:int):void
		{
			_y = value;
		}

		public function get x():int
		{
			return _x;
		}

		public function set x(value:int):void
		{
			_x = value;
		}

	}
}