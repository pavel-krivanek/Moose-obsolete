grammar-comments
commentTail

	^ 	('*' asPParser , commentTailStar ) /
		(notStar , commentTail)