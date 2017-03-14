detect
testDetectIfOneIfNone
	| element |
	#(1 2 3) detect: [:each | each = 2] ifOne: [:theOne | element := theOne ] ifNone: [element := nil].
	self assert: element = 2.

	#(1 2 3) detect: [:each | each = 4] ifOne: [:theOne | element := theOne ] ifNone: [element := nil].
	self assert: element isNil.
