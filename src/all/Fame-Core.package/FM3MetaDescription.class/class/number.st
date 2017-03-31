constants
number

	number isNil ifTrue: [ 
		number := self numberClass basicNew.
		number initialize.
		number name: #Number.
		"FM3Number beImmutable" ].
	^number