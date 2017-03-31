testing-mapping
testWrapping
	| parser result |
	parser := #digit asParser plus >=> [ :stream :cc | Array with: stream position with: cc value with: stream position ].
	self assert: parser parse: '1' to: #(0 #($1) 1).
	self assert: parser parse: '12' to: #(0 #($1 $2) 2).
	self assert: parser parse: '123' to: #(0 #($1 $2 $3) 3).
	result := parser parse: 'a'.
	self assert: result first equals: 0.
	self assert: result second isPetitFailure.
	self assert: result last equals: 0