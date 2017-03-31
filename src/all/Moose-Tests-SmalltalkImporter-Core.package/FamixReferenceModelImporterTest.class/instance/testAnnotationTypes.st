annotations
testAnnotationTypes
	self assert: self model allAnnotationTypes size equals: 3.
	self assert: (self model allAnnotationTypes anySatisfy: [ :each | each name = #aPragma ]).
	self assert: (self model allAnnotationTypes anySatisfy: [ :each | each name = #anotherPragma ]).
	self assert: (self model allAnnotationTypes anySatisfy: [ :each | each name = #aPragma:parameter: ])