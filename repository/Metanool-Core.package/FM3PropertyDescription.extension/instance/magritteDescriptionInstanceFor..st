*metanool-core
magritteDescriptionInstanceFor: aType 
	| instance |
	instance := MAStringDescription new
		beReadonly;
		yourself.
	self isMultivalued ifTrue: [^ instance].

	aType = FM3 boolean ifTrue: [ instance := MABooleanDescription new ].
	aType = FM3 string ifTrue: [ instance := MAStringDescription new ].
	aType = FM3 number ifTrue: [ instance := MANumberDescription new ].
	^ instance