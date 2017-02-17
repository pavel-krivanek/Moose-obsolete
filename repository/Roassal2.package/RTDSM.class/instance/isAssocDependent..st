testing
isAssocDependent: assoc
	| v |
	v := dependency rtValue: assoc key.
	v = assoc value ifTrue: [ ^ true ].
	^ v isCollection
		ifTrue: [ v includes: assoc value ]
		ifFalse: [ false ]