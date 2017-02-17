annotations
testAnnotationInstanceAttributes
	| unaryAnnType withParameterAnnType |
	unaryAnnType := self model allAnnotationTypes detect: [ :each | each name = #aPragma ].
	self assert: unaryAnnType instances first attributes isEmpty.
	withParameterAnnType := self model allAnnotationTypes detect: [ :each | each name = #aPragma:parameter: ].
	self assert: withParameterAnnType instances first attributes size equals: 2.
	self assert: withParameterAnnType instances last attributes size equals: 2.
	self assert: withParameterAnnType instances first attributes first annotationTypeAttribute name equals: #aPragma.
	self assert: withParameterAnnType instances first attributes last annotationTypeAttribute name equals: #parameter