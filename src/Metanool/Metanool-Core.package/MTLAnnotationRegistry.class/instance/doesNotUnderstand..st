error handling
doesNotUnderstand: aMessage

	| property |
	property := self entity mooseDescription 
		attributeNamed: aMessage selector 
		ifAbsent: [nil].
	^ property isNil 
		ifTrue: [nil]
		ifFalse: [self entity mmGetProperty: property]