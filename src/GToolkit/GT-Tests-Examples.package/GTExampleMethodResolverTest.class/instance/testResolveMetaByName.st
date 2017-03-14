tests-convenience
testResolveMetaByName
	| method |
	method := GTExampleMethodResolver resolve: GTExampleMethod example: nil className: #GTExampleMethodResolver meta: true selector: #resolve:example:selector:.
	
	self assert: method class: GTExampleMethodResolver class classNamed: 'GTExampleMethodResolver class' meta: true selector: #resolve:example:selector:.
	self assert: method class: GTExampleMethodResolver class classNamed: 'GTExampleMethodResolver class' meta: true selector: #resolve:example:selector:.
	
	method := GTExampleMethodResolver resolve: GTExampleMethod example: nil className: 'GTExampleMethodResolver' meta: true selector: #resolve:example:selector:.
	
	self assert: method class: GTExampleMethodResolver class classNamed: 'GTExampleMethodResolver class' meta: true selector: #resolve:example:selector:.
	self assert: method class: GTExampleMethodResolver class classNamed: 'GTExampleMethodResolver class' meta: true selector: #resolve:example:selector:.