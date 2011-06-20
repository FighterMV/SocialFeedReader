package com.rwth.elearning.socialfeedreader.vo.style.widgets
{
	[Bindable]
	public class WidgetVO
	{
		
		private var _isVisible:Boolean;
		
		private var _x:int;
		private var _y:int;
		private var _width:int;
		private var _height:int;
		private var _bgColor:Number;
		private var _alpha:Number;
		private var _cornerRadius:int;
		private var _textColor:Number;
		
		public function WidgetVO()
		{
			_x = 50;
			_y = 50;
			_width = 500;
			_height = 300;
			_bgColor = 0x6699cc;
			_textColor = 0x000000;
			_cornerRadius = 5;
			_alpha = 1;
			_isVisible = true;
		}

		public function get isVisible():Boolean
		{
			return _isVisible;
		}

		public function set isVisible(value:Boolean):void
		{
			_isVisible = value;
		}

		public function get textColor():Number
		{
			return _textColor;
		}

		public function set textColor(value:Number):void
		{
			_textColor = value;
		}

		public function get cornerRadius():int
		{
			return _cornerRadius;
		}

		public function set cornerRadius(value:int):void
		{
			_cornerRadius = value;
		}

		public function get alpha():Number
		{
			return _alpha;
		}

		public function set alpha(value:Number):void
		{
			_alpha = value;
		}

		public function get bgColor():Number
		{
			return _bgColor;
		}

		public function set bgColor(value:Number):void
		{
			_bgColor = value;
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