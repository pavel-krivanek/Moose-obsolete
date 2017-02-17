tests
testSimple
	| mooseModel classA |
	mooseModel := self readMSEStream: MooseSampleData new modelVersion1 readStream.
	self assert: mooseModel entities notEmpty.
	self
		assert: (mooseModel allClasses collect: #name) asSortedCollection asArray
		equals:
			{'ClassA'.
			'ClassB'}.
	self
		assert: (mooseModel allPackages collect: #name) asArray
		equals:
			{'aPackage'.
			'aPackage'}.
	classA := mooseModel entityNamed: #aNamespace::ClassA.
	self assert: classA container == (mooseModel entityNamed: #aNamespace).
	self assert: classA methods size equals: 1.	"====="
	self shouldnt: [ self readMSEStream: MooseSampleData new modelVersion2 readStream ] raise: Error.
	self shouldnt: [ self readMSEStream: MooseSampleData new modelVersion3 readStream ] raise: Error.
	self shouldnt: [ self readMSEStream: MooseSampleData new modelVersion4 readStream ] raise: Error.
	self shouldnt: [ self readMSEStream: MooseSampleData new modelVersion5 readStream ] raise: Error