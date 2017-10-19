tests
testExample: anExampleSelector
	| window |
	self assert: anExampleSelector isSymbol.
	self assert: (OPUmlExamples class selectors includes: anExampleSelector).
	window := OPUmlExamples perform: anExampleSelector.
	self assert: (window isKindOf: OPWorkbench).
	window delete