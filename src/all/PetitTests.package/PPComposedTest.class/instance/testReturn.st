testing-examples
testReturn
	| number spaces return |
	number := #digit asParser plus flatten.
	spaces := #space asParser star.
	return := (spaces , $^ asParser token , spaces , number)
		==> [ :nodes | Array with: #return with: (nodes at: 4) ].

	self assert: return parse: '^1' to: #(return '1').
	self assert: return parse: '^12' to: #(return '12').
	self assert: return parse: '^ 123' to: #(return '123').
	self assert: return parse: '^  1234' to: #(return '1234').
	
	self assert: return fail: '1'.
	self assert: return fail: '^'