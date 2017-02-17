setup
importModels

	MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		model: model1;
		addFromPackageNamed: #'Moose-TestResources-KGB-P1FullReferencer';
		addFromPackageNamed: #'Moose-TestResources-KGB-P2InteractedReferencerReferee';
		run.
		
	MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		model: model2;
		addFromPackageNamed: #'Moose-TestResources-PackageBlueprint-P1';
		addFromPackageNamed: #'Moose-TestResources-PackageBlueprint-P2';
		addFromPackageNamed: #'Moose-TestResources-PackageBlueprint-P3';
		addFromPackageNamed: #'Moose-TestResources-PackageBlueprint-P4';
		run.
	
	MoosePharoImporterTask new
		importerClass: SmalltalkImporter;
		doNotRunCandidateOperator; 
		model: lcomModel;
		addFromPackageNamed: #'Moose-TestResources-LCOM';
		run