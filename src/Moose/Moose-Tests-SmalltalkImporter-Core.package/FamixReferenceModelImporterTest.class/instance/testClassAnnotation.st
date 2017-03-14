reference model annotation
testClassAnnotation
	"self debug: #testClassAnnotation"

	| definingClassName famixClass |
	definingClassName := #Smalltalk::SubRootLevelOne mooseName.
	famixClass := self model entityNamed: definingClassName.
	self assert: famixClass parentPackage name equals: #'Moose-TestResources-Reference-Core'