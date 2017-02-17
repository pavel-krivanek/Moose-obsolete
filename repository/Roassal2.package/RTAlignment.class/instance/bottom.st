public
bottom
	self hasElement ifFalse: [ ^ self ].
	self alignFromBottomUsing: self bottomMostElement 