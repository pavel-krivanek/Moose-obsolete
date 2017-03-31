as yet unclassified
testConditionFalse
	| parser |
	parser := ('a' asParser if: [ :ctx | false ]).
	
	self assert: parser fail: 'a'.
	self assert: parser fail: 'b'.