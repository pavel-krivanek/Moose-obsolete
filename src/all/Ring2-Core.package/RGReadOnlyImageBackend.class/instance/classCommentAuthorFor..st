class comment
classCommentAuthorFor: anRGComment

	^ RGStampParser authorForStamp: (self realBehaviorFor: anRGComment parent) organization commentStamp.
