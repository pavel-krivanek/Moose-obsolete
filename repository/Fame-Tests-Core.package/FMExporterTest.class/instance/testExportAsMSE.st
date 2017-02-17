running
testExportAsMSE
	| printer |
	printer := FMMSEPrinter new onString.
	FMMetaRepository fm3 accept: printer.
	printer stream contents isString should beTrue.
	printer stream contents first should equal: $(