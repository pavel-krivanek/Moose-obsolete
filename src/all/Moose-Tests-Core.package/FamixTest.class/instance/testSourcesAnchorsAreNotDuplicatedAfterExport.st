tests
testSourcesAnchorsAreNotDuplicatedAfterExport
	| model package tempFile importedModel |
	model := MooseModel new name: 'Perdu'.
	package := FAMIXPackage new
		name: 'Package';
		mooseModel: model;
		yourself.
	FAMIXClass new
		name: 'Class';
		container: package;
		sourceAnchor:
			(FAMIXSourceTextAnchor new
				source: 'some text';
				mooseModel: model;
				yourself);
		mooseModel: model.
	tempFile := (FileSystem memory / 'export-test.mse') ensureCreateFile.
	model exportToMSEStream: tempFile writeStream.
	importedModel := MooseModel new importFromMSEStream: tempFile readStream.
	self assert: importedModel size equals: model size