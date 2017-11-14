accessing
outerXMLNode: aNode
	outerXMLNode := aNode.
	"the document is saved because this node will be replaced and removed
	from it when the edited source is accepted, and the encoding is needed
	from it if the source is being saved to a file"
	self
		configuration: aNode configuration;
		document: aNode document