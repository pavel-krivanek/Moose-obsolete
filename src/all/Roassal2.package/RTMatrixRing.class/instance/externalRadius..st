accessing
externalRadius: anObject
	self assert: anObject > self innerRadius.
	externalRadius := anObject