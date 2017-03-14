as yet unclassified
testStatusBackpointer
	| spec |
	spec := REPConcernSpecification on: #().
	spec composite: 'composite' meaning: 'something' with: [ 
		spec query: 'success1' meaning: '' as: [:input | #()].
		spec query: 'success2' meaning: '' as: [:input | #()]. 
	].
	self assert: spec root children first status concern = spec root children first