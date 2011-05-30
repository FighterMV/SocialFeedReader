package com.rwth.elearning.socialfeedreader.vo.testBox
{
	[Bindable]
	public class TestBoxVO
	{
		
		/**
		 * Step 3: The Model
		 * This is a part of the Model of MVC pattern.
		 * The model can be access by the SocialFeedReaderModelLocator.getInstance(). This is a singleton and because of this only one time available all the time.
		 * The modelLocator contains the model things - so as well this TextBoxVO which holds all information about the TestBox. like coordinates, width and height.
		 * At the setter you see how the values can be set from outside.
		 * go to the TestBox.mxml in the view package to see Step 4.
		 **/
		private var _x:int = 100;
		private var _y:int = 50;
		private var _width:int = 200;
		private var _height:int = 150;
		
		private var _testText:String;
		
		public function TestBoxVO()
		{
		}
		
		public function get x():int{
			return _x;
		}
		
		public function set x(x:int):void{
			_x = x;
		}
		
		public function get y():int{
			return _y;
		}
		
		public function set y(y:int):void{
			_y = y;
		}
		
		public function get width():int{
			return _width;
		}
		
		public function set width(width:int):void{
			_width = width;
		}
		
		public function get height():int{
			return _height;
		}
		
		public function set height(height:int):void{
			_height = height;
		}
		
		public function get testText():String{
			return _testText;
		}
		
		public function set testText(testText:String):void{
			_testText = testText;
		}
		
	}
}