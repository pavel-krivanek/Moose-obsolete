visitor
visitClassCommentChunk: aChunk

	| class comment |
	
	class := self classNamed: aChunk behaviorName.
	comment := RGComment parent: class.
	comment content: aChunk contents.
	comment author: (RGStampParser authorForStamp: aChunk stamp).
	comment time: (RGStampParser timeForStamp: aChunk stamp).
	class comment: comment.
	