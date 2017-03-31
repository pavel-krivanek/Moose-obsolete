tests-convenience
testResolveByName
	| method |
	method := GTExampleMethodResolver resolve: GTExampleMethod example: nil className: #GTExampleMethodResolver meta: false selector: #selector.
	
	self assert: method class: GTExampleMethodResolver classNamed: #GTExampleMethodResolver meta: false selector: #selector.
	self assert: method class: GTExampleMethodResolver classNamed: 'GTExampleMethodResolver' meta: false selector: #selector.
	
	method := GTExampleMethodResolver resolve: GTExampleMethod example: nil className: 'GTExampleMethodResolver' meta: false selector: 'selector'.
	
	self assert: method class: GTExampleMethodResolver classNamed: #GTExampleMethodResolver meta: false selector: #selector.
	self assert: method class: GTExampleMethodResolver classNamed: 'GTExampleMethodResolver' meta: false selector: #selector.