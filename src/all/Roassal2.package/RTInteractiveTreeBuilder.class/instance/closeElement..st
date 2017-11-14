interactions
closeElement: e
	| children |
	
	children := e attributes at: self childrenKey.
	self closeNodes: children.
	e attributes at: #open put: false.
	afterClose ifNotNil: [ afterClose rtValue: e ].