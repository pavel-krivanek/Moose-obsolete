annotations
testAnnotationInstances
	| unaryAnnType withParameterAnnType |
	self assert: self model allAnnotationInstances size equals: 4.
	unaryAnnType := self model allAnnotationTypes detect: [ :each | each name = #aPragma ].
	withParameterAnnType := self model allAnnotationTypes detect: [ :each | each name = #aPragma:parameter: ].
	self assert: unaryAnnType instances size equals: 1.
	self assert: withParameterAnnType instances size equals: 2