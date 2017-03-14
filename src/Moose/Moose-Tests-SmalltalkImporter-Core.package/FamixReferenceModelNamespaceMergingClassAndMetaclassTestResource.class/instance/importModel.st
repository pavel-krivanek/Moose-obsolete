importing
importModel
	
	| importer | 
	importer := MoosePharoImporterTask new.
	importer importingContext mergeClassAndMetaclass.
	importer importerClass: SmalltalkImporter.
	importer doNotRunCandidateOperator.
	importer 
			model: model; 
			addFromPackageNamed: #'Moose-TestResources-Reference-Core'; run.