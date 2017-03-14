as yet unclassified
setUp
	model := MooseModel new.	
	model name: 'Test'.
	model sourceLanguage: FAMIXSmalltalkSourceLanguage new.
	pharoImporterTask := MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		doNotRunCandidateOperator; 
		importingContext: (MooseImportingContext new 
										importPackage;
										importInheritance;
										importAccess;
										mergeClassAndMetaclass ; yourself).