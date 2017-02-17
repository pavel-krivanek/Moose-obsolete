handling - lexical
comment: aString
	self preservesCommentNodes
		ifTrue: [self topNode addNode: (self nodeFactory newComment: aString)]