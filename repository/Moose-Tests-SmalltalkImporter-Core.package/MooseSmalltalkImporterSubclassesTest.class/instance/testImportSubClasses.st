as yet unclassified
testImportSubClasses
self pharoImporterTask
		importingContext:
				(self pharoImporterTask importingContext
						importSubclasses;
						yourself);
		model: model;
		addFromPackagesMatching: [ :e | e name beginsWith: 'Moose-TestResources-Reference-Core' ];
		run;
		yourself.
	self assert: ((model allClasses collect: #name) includes: 'SubRootModelTwo')