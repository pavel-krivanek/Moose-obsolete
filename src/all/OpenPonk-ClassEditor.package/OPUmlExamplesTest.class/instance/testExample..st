tests
testExample: anExampleSelector
	| wnd |
	self assert: anExampleSelector isSymbol.
	self assert: (OPUmlExamples class selectors includes: anExampleSelector).
	wnd := OPUmlExamples perform: anExampleSelector.
	self assert: (wnd isKindOf: OPWorkbench).
	wnd delete