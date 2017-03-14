printing
canonicallyPrintOn: aStream
 	"Prints on aStream as canonical XML (http://www.w3.org/TR/xml-c14n)"

	self
		printOn: aStream
		beforeWritingDo: [:writer | writer isCanonical: true]