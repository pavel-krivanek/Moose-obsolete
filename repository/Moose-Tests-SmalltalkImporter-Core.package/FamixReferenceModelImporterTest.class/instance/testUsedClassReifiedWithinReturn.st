reference model reification
testUsedClassReifiedWithinReturn
	"self debug: #testUsedClassReifiedWithinReturn"
	
	| className famixClass |
	className := String class mooseName.
	famixClass := self model entityNamed: className.
	self assert: famixClass isNil not.
	self assert: famixClass isStub.