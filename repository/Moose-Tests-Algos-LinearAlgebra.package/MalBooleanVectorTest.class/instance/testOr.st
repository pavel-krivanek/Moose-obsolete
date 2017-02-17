running
testOr
	| w vw |
	v := MalBooleanVector withAll: #(false false true true false false true true).
	w := MalBooleanVector withAll: #(false true false true true false true false).
	vw := v | w.
	self assert: vw size equals: 8.
	self assert: vw asArray equals: #(false true true true true false true true)