parsing
beginAttribute: aString
	current isNil should beTrue.
	current := FMFutureAttribute with: self name: aString