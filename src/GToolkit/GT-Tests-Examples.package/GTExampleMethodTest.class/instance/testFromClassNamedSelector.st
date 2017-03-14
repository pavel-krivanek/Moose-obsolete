tests
testFromClassNamedSelector
	| exampleMethod |
	exampleMethod := GTExampleMethod fromClassNamed: #GTExampleMethod selector: #isValid.
	self assert: exampleMethod class: GTExampleMethod className: #GTExampleMethod meta: false selector: #isValid.
	
	exampleMethod := GTExampleMethod fromClassNamed: 'GTExampleMethod' selector: #isValid.
	self assert: exampleMethod class: GTExampleMethod className: #GTExampleMethod meta: false selector: #isValid.
	
	exampleMethod := GTExampleMethod fromClassNamed: #GTExampleMethod selector: #isValid.
	self assert: exampleMethod class: GTExampleMethod className: 'GTExampleMethod' meta: false selector: #isValid.