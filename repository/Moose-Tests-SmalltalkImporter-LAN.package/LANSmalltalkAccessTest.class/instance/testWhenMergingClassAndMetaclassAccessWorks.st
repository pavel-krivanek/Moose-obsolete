tests
testWhenMergingClassAndMetaclassAccessWorks
	"self debug: #testWhenMergingClassAndMetaclassAccessWorks"

	"this test tests that we can access smalltalk class and compiledMethod from famix when the class and metaclasses are  merged"

	| model importer fmNewMethodName |
	model := MooseModel new.
	importer := MoosePharoImporterTask new.
	importer importerClass: SmalltalkImporter.
	importer importingContext mergeClassAndMetaclass.
	importer model: model.
	importer addFromPackageNamed: #'Moose-TestResources-LAN'.
	importer run.
	self assert: (model entityNamed: LANNode mooseName) smalltalkClass equals: LANNode.
	self assert: (model entityNamed: (LANNode >> #accept:) mooseName) compiledMethod equals: LANNode >> #accept:.
	self assert: (model entityNamed: LANNode mooseName) isInstanceSide.
	self deny: (model entityNamed: (LANNode >> #accept:) mooseName) hasClassScope.
	self assert: (model entityNamed: #'Smalltalk::LANNode.new()') hasClassScope.
	self assert: (model entityNamed: (LANNode >> #accept:) mooseName) smalltalkClass equals: LANNode.
	self assert: (model entityNamed: #'Smalltalk::LANNode.new()') smalltalkClass equals: LANNode class.
	self assert: (model entityNamed: #'Smalltalk::LANNode.new()') compiledMethod equals: LANNode class >> #new