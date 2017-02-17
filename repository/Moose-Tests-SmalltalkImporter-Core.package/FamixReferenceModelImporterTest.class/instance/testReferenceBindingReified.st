reference model reification
testReferenceBindingReified
	"self debug: #testReferenceBindingReified"
	
	| famixClass |
	famixClass := self model entityNamed: TestRunner class mooseName.
	self assert: famixClass isNil not