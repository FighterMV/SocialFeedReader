package com.rwth.elearning.socialfeedreader.vo.content.twitter
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class TwitterWidgetContentVO
	{
		
		private var _posts:ArrayCollection;
		
		public function TwitterWidgetContentVO()
		{
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