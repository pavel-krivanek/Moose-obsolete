class comment
classCommentTimeFor: anRGComment

	^ RGStampParser timeForStamp: (self realBehaviorFor: anRGComment parent) organization commentStamp.