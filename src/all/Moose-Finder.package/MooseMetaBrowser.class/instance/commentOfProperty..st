private
commentOfProperty: fm3Prop
		| commentPrag |
	fm3Prop mmClass implementingClass isNil ifTrue: [^ ''].
	commentPrag := Pragma inMethod: fm3Prop compiledMethod named: #MSEComment:.
	^ commentPrag ifNil: [ '' ] ifNotNil: [ commentPrag argumentAt: 1 ]