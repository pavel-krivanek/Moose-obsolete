testing-productions
testDefineProduction
	self
		performRefactoring:
			(PPDefineProductionRefactoring
				onClass: PPArithmeticParser
				source: 'function ^ #any plus , $( , $) ==> [ :e | 0 ]'
				protocols: (Array with: #productions)).
	self assert: self changes size equals: 2.
	self assert: self changes first class equals: RBAddInstanceVariableChange.
	self assert: self changes first variable equals: 'function'.
	self assert: self changes last class equals: RBAddMethodChange.
	self
		assert: self changes last parseTree
		equals: (RBParser parseMethod: 'function ^ #any asParser plus , $( asParser , $) asParser ==> [ :e | 0 ]')