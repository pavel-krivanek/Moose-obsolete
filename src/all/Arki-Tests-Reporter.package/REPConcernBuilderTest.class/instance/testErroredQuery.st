as yet unclassified
testErroredQuery
	| spec |
	spec := REPConcernSpecification on: 42.
	spec query: 'Label' meaning: 'Explanation' as: [:x | 1 // 0].
	self assert: spec root children size = 1.
	self assert: spec root children first label = 'Label'.
	self assert: spec root children first explanation = 'Explanation'.
	self assert: spec root children first model = 42.
	self assert: spec root children first result isNil