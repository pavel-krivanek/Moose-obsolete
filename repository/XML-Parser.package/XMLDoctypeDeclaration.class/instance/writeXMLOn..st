printing
writeXMLOn: aWriter
	aWriter doctype
		root: self root;
		publicID: self publicID;
		systemID: self systemID;
		with: [self writeInnerXMLOn: aWriter]