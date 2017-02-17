accessing
innerXML
	"Returns a string containing the XML source of all descendent nodes.
	
	See #innerXML:"

	^ String streamContents: [:stream | self printInnerXMLOn: stream]