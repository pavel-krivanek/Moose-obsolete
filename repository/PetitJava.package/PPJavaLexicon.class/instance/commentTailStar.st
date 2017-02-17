grammar-comments
commentTailStar 

	^ ('/' asPParser ) /
	  ('*' asPParser , commentTailStar ) /
	  (notStarNotSlash , commentTail )