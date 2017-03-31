accessing
innerXMLPrettyPrinted
	"Pretty print version of #innerXML.
	
	See #innerXML:"

	^ String streamContents: [:stream |
		self
			printInnerXMLOn: stream
			beforeWritingDo: [:writer | writer enablePrettyPrinting]]