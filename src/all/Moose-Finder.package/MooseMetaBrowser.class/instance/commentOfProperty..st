private
commentOfProperty: fm3Prop
	| com commentPrag |
	fm3Prop mmClass implementingClass isNil ifTrue: [^ ''].
	com := ''.
	commentPrag := Pragma 
		inMethod: fm3Prop compiledMethod
		named: #MSEComment:.
	commentPrag 
		ifNotNil: [ com := commentPrag argumentAt: 1 ]
		ifNil: [
			commentPrag := Pragma 
				inMethod: fm3Prop compiledMethod
				named: #property:longName:description:.
			commentPrag ifNotNil: 
				[ com := (commentPrag argumentAt: 2) , '. ' , (commentPrag argumentAt: 3) ] ].
	^ com 