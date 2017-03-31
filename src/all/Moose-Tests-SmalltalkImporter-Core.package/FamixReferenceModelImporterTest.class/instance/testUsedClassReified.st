reference model reification
testUsedClassReified
	"self debug: #testUsedClassReified"
	| className famixClass |
	className := Object mooseName.
	famixClass := self model entityNamed: className ifAbsent: [nil].
	self assert: famixClass isNil not.
	self assert: famixClass isStub.