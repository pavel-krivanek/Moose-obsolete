printing
prettyPrintToFileNamed: aFileName
 	"Prints XML to the file aFileName with whitespace formatting for readability"

	self
		printToFileNamed: aFileName
		beforeWritingDo: [:writer | writer enablePrettyPrinting]