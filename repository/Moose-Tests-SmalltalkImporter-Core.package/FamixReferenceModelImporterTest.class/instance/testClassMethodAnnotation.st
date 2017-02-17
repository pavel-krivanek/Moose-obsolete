reference model annotation
testClassMethodAnnotation
	"self debug: #testClassMethodAnnotation"

	| definingClassName methodUniqueName method methodName |
	definingClassName := SubRootLevelOne class mooseName.
	methodName := #accessSharedVariableOfSuperClassClassSide.
	methodUniqueName := FAMIXNameResolver
		uniqueNameForMethodWithSmalltalkSelector: methodName
		hasClassScope: false
		class: definingClassName.
	method := self model entityNamed: methodUniqueName.
	self assert: method category equals: #'accessing superclassinstance on class side'