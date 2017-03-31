annotations
testAnnotationTypeAttributes
	| unaryAnnType withParameterAnnType |
	unaryAnnType := self model allAnnotationTypes detect: [ :each | each name = #aPragma ].
	self assert: unaryAnnType attributes isEmpty.
	withParameterAnnType := self model allAnnotationTypes detect: [ :each | each name = #aPragma:parameter: ].
	self assert: withParameterAnnType attributes size equals: 2