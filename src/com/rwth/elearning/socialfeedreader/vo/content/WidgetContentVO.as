package com.rwth.elearning.socialfeedreader.vo.content
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class WidgetContentVO
	{
		
		private var _posts:ArrayCollection;
		
		public function WidgetContentVO()
		{
			_posts = new ArrayCollection();
		}

		public function get posts():ArrayCollection
		{
			return _posts;
		}

		public function set posts(value:ArrayCollection):void
		{
			_posts = value;
		}

	}
}