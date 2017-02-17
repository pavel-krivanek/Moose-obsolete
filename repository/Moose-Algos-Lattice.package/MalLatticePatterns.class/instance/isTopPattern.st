top
isTopPattern
	self isTopBlack ifTrue: [^ 'Top Black']. 
	(self isTopFull)  ifTrue: [^ 'Top Full'].
	self isTopGrey  ifTrue: [^ 'Top Grey'].
	^'None'
	