accessing
exportString
	
	| printer |
	printer := FMMSEPrinter new.
	printer onString: String new.
	self replayOn: printer.
	^printer stream contents.