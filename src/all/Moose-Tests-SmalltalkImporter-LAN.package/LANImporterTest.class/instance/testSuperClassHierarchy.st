tests
testSuperClassHierarchy
	"self debug: #testSuperClassHierarchy"

	self assert: (self model entityNamed: #Smalltalk::LANPrintServer) superclassHierarchy size equals: 5