running
testNot
	v := MalBooleanVector withAll: #(false false true true false false true true).
	self assert: v not size equals: 8.
	self assert: v not asArray equals: #(true true false false true true false false)