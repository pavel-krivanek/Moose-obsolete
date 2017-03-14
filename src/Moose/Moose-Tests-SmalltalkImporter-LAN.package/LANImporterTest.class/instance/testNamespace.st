tests
testNamespace
	"self debug: #testNamespace"

	| namespace |
	namespace := self model entityNamed: #Smalltalk.
	self assert: namespace class equals: FAMIXNamespace