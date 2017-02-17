constants
boolean

	boolean isNil ifTrue: [ 
		boolean := self booleanClass basicNew.
		boolean initialize.
		boolean name: #Boolean.
		"FM3Boolean beImmutable" ].
	^boolean