printing
prettyPrintToFileNamed: aFileName
 	"Prints XML to specified file with whitespace formatting for readability"

	self
		printToFileNamed: aFileName
		beforeWritingDo: [:writer | writer enablePrettyPrinting]