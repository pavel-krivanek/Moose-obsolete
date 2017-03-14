tests
testImportLANPackage
	"self debug: #testImportLANPackage"
	
	| model class package |
	model := MooseModel new.	
	MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		doNotRunCandidateOperator; 
		importingContext: (MooseImportingContext new importClass; importPackage; yourself);
		model: model;
		addFromPackageNamed: #'Moose-TestResources-LAN';
		run;
		yourself.
	self deny: (model allPackages isEmpty).
	package := model entityNamed: #'Moose-TestResources-LAN'.
	class := model entityNamed: #'Smalltalk::LANNode'. 
	self assert: class parentPackage == package