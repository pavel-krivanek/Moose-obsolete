public
top
	self hasElement ifFalse: [ ^ self ].
	self alignFromTopUsing: self topMostElement 