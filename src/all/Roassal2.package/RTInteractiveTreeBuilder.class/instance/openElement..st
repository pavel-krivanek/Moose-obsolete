interactions
openElement: e
	| children |
	
	children := e attributes at: self childrenKey.
	e view addAll: (self openChildren: children parent: e).
	e attributes at: #open put: true.
	afterOpen ifNotNil: [ afterOpen rtValue: e ].