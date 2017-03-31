accessing
defaultCommentColor
	^ defaultCommentColor
		ifNil: [defaultCommentColor :=  self textColorForShoutProperty: #comment]