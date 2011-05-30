package com.rwth.elearning.socialfeedreader.vo.twitter
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class PostsVO
	{		
		
		private var _posts:ArrayCollection;
		
		public function PostsVO()
		{
		}
		
		public function get posts():ArrayCollection{
			return _posts;
		}
		
		public function set posts(posts:ArrayCollection):void{
			_posts = posts;
		}
		
	}
}