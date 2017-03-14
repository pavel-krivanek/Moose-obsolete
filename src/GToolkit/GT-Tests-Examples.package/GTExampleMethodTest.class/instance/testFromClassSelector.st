tests
testFromClassSelector
	| exampleMethod |
	exampleMethod := GTExampleMethod fromClass: GTExampleMethod selector: #hasExample.
	self assert: exampleMethod class: GTExampleMethod className: #GTExampleMethod meta: false selector: #hasExample.
	self assert: exampleMethod class: GTExampleMethod className: 'GTExampleMethod' meta: false selector: #hasExample.