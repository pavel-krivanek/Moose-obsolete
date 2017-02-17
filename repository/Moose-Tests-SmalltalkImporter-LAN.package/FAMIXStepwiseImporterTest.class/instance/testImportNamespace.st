tests
testImportNamespace
	"self debug: #testImportNamespace"

	| model nap |
	model := MooseModel new.
	MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		doNotRunCandidateOperator;
		importingContext:
				(MooseImportingContext new
						importNamespace;
						importClass;
						importPackage;
						yourself);
		model: model;
		addFromPackageNamed: #'Moose-TestResources-LAN';
		run;
		yourself.
	nap := model entityNamed: #Smalltalk.
	self assert: nap class equals: FAMIXNamespace