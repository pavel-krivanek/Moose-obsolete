detect
testDetectIfOne
	| element result |
	result := #(1 2 3) detect: [:each | each = 2] ifOne: [:theOne | element := theOne ].
	self assert: element = 2.
	self assert: result = 2.

	element := 42.
	result := #(1 2 3) detect: [:each | each = 4] ifOne: [:theOne | element := theOne ].
	self assert: element equals: 42.
	self assert: result isNil.