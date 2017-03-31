tests
testAccessesReification

	| accesses |
	accesses := self model allAccesses.
	self assert: accesses isEmpty not.
	accesses do: [:each | self assert: (each accessor isKindOf: FAMIXMethod)].