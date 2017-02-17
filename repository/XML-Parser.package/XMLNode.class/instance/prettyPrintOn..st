printing
prettyPrintOn: aStream
 	"Prints XML on aStream with whitespace formatting for readability"

	self
		printOn: aStream
		beforeWritingDo: [:writer | writer enablePrettyPrinting]