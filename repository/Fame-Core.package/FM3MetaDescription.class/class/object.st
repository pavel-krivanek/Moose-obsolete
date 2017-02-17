constants
object

	object isNil ifTrue: [ 
		object := self objectClass basicNew.
		object initialize.
		object superclass: nil.
		object name: #Object.
		"FM3Object beImmutable" ].
	^object