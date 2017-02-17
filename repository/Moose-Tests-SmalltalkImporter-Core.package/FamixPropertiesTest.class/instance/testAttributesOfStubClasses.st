testing
testAttributesOfStubClasses
	"testing issue 960"
	self model allClasses do: [ :cl |
		(cl isStub) ifTrue: [ self assert: (cl attributes allSatisfy: [:att | att isStub])] ]