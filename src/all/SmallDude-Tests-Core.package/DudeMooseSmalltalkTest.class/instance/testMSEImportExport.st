testing
testMSEImportExport
	| loadedModel |
	loadedModel := MooseModel new importFromMSEStream: model asMSEString readStream.
	self assert: model allDuplications size equals: 3.
	self assert: loadedModel allDuplications size equals: 3