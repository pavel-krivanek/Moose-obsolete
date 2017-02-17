streaming
exportOn: aStream

	| printer |
	printer := FMMSEPrinter new stream: aStream.
	self accept: printer.