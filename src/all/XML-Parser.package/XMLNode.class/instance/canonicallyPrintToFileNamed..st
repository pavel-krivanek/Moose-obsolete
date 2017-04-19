printing
canonicallyPrintToFileNamed: aFileName
 	"Prints to the file aFileName as canonical XML (http://www.w3.org/TR/xml-c14n)"

	self
		printToFileNamed: aFileName
		beforeWritingDo: [:writer | writer isCanonical: true]