testing
testListOfIntegers
	"S ::= S , number | number"
	
	| number list parser |
	number := #digit asParser plus flatten trim
		==> [ :node | node asInteger ].
	list := (number separatedBy: $, asParser token trim)
		==> [ :node | node select: [ :each | each isKindOf: Integer ] ].
	parser := list end.

	self assert: parser parse: '1' to: (1 to: 1) asArray.
	self assert: parser parse: '1,2' to: (1 to: 2) asArray.
	self assert: parser parse: '1,2,3' to: (1 to: 3) asArray.
	self assert: parser parse: '1,2,3,4' to: (1 to: 4) asArray.
	self assert: parser parse: '1,2,3,4,5' to: (1 to: 5) asArray.

	self assert: parser parse: '1' to: (1 to: 1) asArray.
	self assert: parser parse: '1, 2' to: (1 to: 2) asArray.
	self assert: parser parse: '1, 2, 3' to: (1 to: 3) asArray.
	self assert: parser parse: '1, 2, 3, 4' to: (1 to: 4) asArray.
	self assert: parser parse: '1, 2, 3, 4, 5' to: (1 to: 5) asArray.

	self assert: parser parse: '1' to: (1 to: 1) asArray.
	self assert: parser parse: '1 ,2' to: (1 to: 2) asArray.
	self assert: parser parse: '1 ,2 ,3' to: (1 to: 3) asArray.
	self assert: parser parse: '1 ,2 ,3 ,4' to: (1 to: 4) asArray.
	self assert: parser parse: '1 ,2 ,3 ,4 ,5' to: (1 to: 5) asArray.
	
	self assert: parser fail: ''.
	self assert: parser fail: ','.
	self assert: parser fail: '1,'.
	self assert: parser fail: '1,,2'