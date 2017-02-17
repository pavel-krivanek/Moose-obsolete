streaming
exportString

	| printer |
	printer := FMMSEPrinter new onString.	
	self accept: printer.
	^printer stream contents