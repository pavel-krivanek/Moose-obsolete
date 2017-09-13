tests
testAll
	OPUmlExamples class selectors
		select: [ :each | each beginsWith: 'example' ]
		thenDo: [ :each | self testExample: each ]