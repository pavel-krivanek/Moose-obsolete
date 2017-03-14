annotations
testAnnotationInstancesConnectedToMethods
	| method |
	method := self model allMethods entityNamed: (TheRoot >> #pragmaWithUnaryName) mooseName.
	self assert: method annotationInstances size equals: 1.
	self assert: method annotationInstances first annotatedEntity equals: method.
	method := self model allMethods entityNamed: (TheRoot >> #pragmaWithParameters) mooseName.
	self assert: method annotationInstances size equals: 1.
	self assert: method annotationInstances first annotatedEntity equals: method.
	method := self model allMethods entityNamed: (TheRoot >> #multiplePragmas) mooseName.
	self assert: method annotationInstances size equals: 2.
	self assert: method annotationInstances first annotatedEntity equals: method.
	self assert: method annotationInstances last annotatedEntity equals: method