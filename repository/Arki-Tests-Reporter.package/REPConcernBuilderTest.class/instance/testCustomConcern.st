as yet unclassified
testCustomConcern
	| spec |
	spec := REPConcernSpecification on: 42.
	spec concern: REPConcern new.
	self assert: spec root children first model = 42