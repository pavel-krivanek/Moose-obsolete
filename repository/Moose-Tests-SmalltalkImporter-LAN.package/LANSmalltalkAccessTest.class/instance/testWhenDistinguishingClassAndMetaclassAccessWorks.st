tests
testWhenDistinguishingClassAndMetaclassAccessWorks
	"self debug: #testWhenDistinguishingClassAndMetaclassAccessWorks"

	"this test tests that we can access smalltalk class and compiledMethod from famix when the class and metaclasses are not merged"

	| model |
	model := MooseModel new.
	MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		model: model;
		addFromPackageNamed: #'Moose-TestResources-LAN';
		run;
		yourself.
	self assert: (model entityNamed: LANNode mooseName) smalltalkClass equals: LANNode.
	self assert: (model entityNamed: LANNode class mooseName) smalltalkClass equals: LANNode class.
	self assert: (model entityNamed: LANNode mooseName) isInstanceSide.
	self deny: (model entityNamed: LANNode class mooseName) isInstanceSide.
	self assert: (model entityNamed: (LANNode >> #accept:) mooseName) compiledMethod equals: LANNode >> #accept:.
	self assert: (model entityNamed: (LANNode class >> #new) mooseName) compiledMethod equals: LANNode class >> #new.
	self deny: (model entityNamed: (LANNode >> #accept:) mooseName) hasClassScope.
	self assert: (model entityNamed: (LANNode class >> #new) mooseName) hasClassScope.
	self assert: (model entityNamed: (LANNode >> #accept:) mooseName) smalltalkClass equals: LANNode.
	self assert: (model entityNamed: (LANNode class >> #new) mooseName) smalltalkClass equals: LANNode class