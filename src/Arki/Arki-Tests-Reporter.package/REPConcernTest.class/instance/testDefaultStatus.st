as yet unclassified
testDefaultStatus
	self assert: REPComputedConcern new status notNil.
	self assert: REPComputedConcern new status color = Color black.
	self assert: REPComputedConcern new status label notNil