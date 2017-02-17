matching
performOn: aParser
	(search match: aParser inContext: owner context)
		ifFalse: [ ^ nil ].
	(self canMatch: aParser)
		ifFalse: [ ^ nil ].
	^ self foundMatchFor: aParser