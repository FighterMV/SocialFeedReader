package com.rwth.elearning.socialfeedreader.model.twitter
{
	import com.rwth.elearning.socialfeedreader.vo.twitter.PostsVO;

	[Bindable]
	public class TwitterModel
	{
		
		private var _posts:PostsVO;
		
		public function TwitterModel()
		{
		}

		public function get posts():PostsVO
		{
			return _posts;
		}

		public function set posts(value:PostsVO):void
		{
			_posts = value;
		}

	}
}