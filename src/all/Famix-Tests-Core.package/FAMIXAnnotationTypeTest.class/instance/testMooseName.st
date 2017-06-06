tests
testMooseName
	| annotationType namespace |
	annotationType := self actualClass new.
	annotationType name: 'XYZ'.
	self assert: annotationType mooseName equals: 'XYZ'.
	namespace := FAMIXNamespace new.
	namespace name: 'abc'.
	annotationType container: namespace.
	self assert: annotationType mooseName equals: 'abc::XYZ'