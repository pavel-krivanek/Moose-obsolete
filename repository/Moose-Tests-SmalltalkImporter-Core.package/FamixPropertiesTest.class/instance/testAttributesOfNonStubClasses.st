testing
testAttributesOfNonStubClasses
	"testing issue 960"
	self model allClasses do: [ :cl |
		(cl isStub not) ifTrue: [ self assert: (cl attributes noneSatisfy: [:att | att isStub])] ]