tests-metarepository
testExportAsXML
	
	| repo visitor repoFM3 printer |
	
	repoFM3 := FMMetaRepository fm3.
	visitor := FMMetaRepositoryFilter new
		metaRepository: repoFM3;
		classes: repoFM3 classes.
	visitor run.
	repo := visitor newMetaRepository.
	
	printer := FMXMLPrinter new onString.
	repo accept: printer.
	printer stream contents isString should beTrue.
	printer stream contents first should = $<