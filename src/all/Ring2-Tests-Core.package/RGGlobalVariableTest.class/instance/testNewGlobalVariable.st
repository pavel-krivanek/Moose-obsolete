tests
testNewGlobalVariable

	| classVariable | 
	classVariable  := RGGlobalVariable named: #SomeGlobalVariable..
	self assert: (classVariable isRingResolved).
	self assert: (classVariable hasResolvedName).
	self assert: (classVariable isGlobalVariable).


	