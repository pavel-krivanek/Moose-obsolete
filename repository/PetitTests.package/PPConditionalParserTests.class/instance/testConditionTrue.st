as yet unclassified
testConditionTrue
	| parser |
	parser := ('a' asParser if: [ :ctx | true ]).
	
	self assert: parser parse: 'a'.
	self assert: parser fail: 'b'.