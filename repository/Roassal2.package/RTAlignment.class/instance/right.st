public
right
	self hasElement ifFalse: [ ^ self ].
	self alignFromRightUsing: self rightMostElement 