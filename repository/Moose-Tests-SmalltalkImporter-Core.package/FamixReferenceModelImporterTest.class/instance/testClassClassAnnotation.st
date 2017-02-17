reference model annotation
testClassClassAnnotation
	"Should work for metaclasse too"

	"self debug: #testClassAnnotation"

	| definingClassName famixClass |
	definingClassName := SubRootLevelOne class mooseName.
	famixClass := self model entityNamed: definingClassName.
	self assert: famixClass parentPackage name equals: #'Moose-TestResources-Reference-Core'