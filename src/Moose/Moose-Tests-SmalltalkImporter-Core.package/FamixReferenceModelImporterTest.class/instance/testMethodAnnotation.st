reference model annotation
testMethodAnnotation
	"self run: #testMethodAnnotation"

	"self debug: #testMethodAnnotation"

	| definingClassName methodUniqueName method methodName |
	definingClassName := #Smalltalk::SubRootLevelOne.
	methodName := #accessSuperclassInstVar.
	methodUniqueName := FAMIXNameResolver
		uniqueNameForMethodWithSmalltalkSelector: methodName
		hasClassScope: false
		class: definingClassName.
	method := self model entityNamed: methodUniqueName ifAbsent: [ nil ].
	self assert: method name equals: #accessSuperclassInstVar.
	self assert: method category equals: #accessingSuperclassInstVar