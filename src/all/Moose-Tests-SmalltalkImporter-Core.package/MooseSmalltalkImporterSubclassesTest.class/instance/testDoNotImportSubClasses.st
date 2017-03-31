as yet unclassified
testDoNotImportSubClasses
	self pharoImporterTask
		importingContext:
				(self pharoImporterTask importingContext
						doNotImportSubclasses;
						yourself);
		model: model;
		addFromPackagesMatching: [ :e | e name beginsWith: 'Moose-TestResources-Reference-Core' ];
		run;
		yourself.
	self deny: ((model allClasses collect: #name) includes: 'SubRootModelTwo')