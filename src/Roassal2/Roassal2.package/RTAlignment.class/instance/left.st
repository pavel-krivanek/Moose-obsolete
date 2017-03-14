public
left
	self hasElement ifFalse: [ ^ self ].
	self alignFromLeftUsing: self leftMostElement 