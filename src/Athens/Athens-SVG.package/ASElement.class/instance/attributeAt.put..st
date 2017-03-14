attribute management
attributeAt: name put: value
	attributes == EmptyDict
		ifTrue: [ attributes := IdentityDictionary new ].
	^ attributes at: name put: value