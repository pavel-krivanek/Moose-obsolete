tests
testIsSUnitTestCase
	| mooseModel |
	mooseModel := MooseModel new.
	MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		model: mooseModel;
		addClasses: (OrderedCollection with: self class);
		run;
		yourself.
	self assert: (mooseModel allModelClasses select: #isInstanceSide) first isSUnitTestCase