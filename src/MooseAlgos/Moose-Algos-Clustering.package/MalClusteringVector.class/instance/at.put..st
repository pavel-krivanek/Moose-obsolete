accessing
at: index put: aNumber
	
	super at: index put: aNumber.
	(found ~~ nil and: [found = index or: [aNumber < min]])
		ifTrue: [found := nil].
	^aNumber