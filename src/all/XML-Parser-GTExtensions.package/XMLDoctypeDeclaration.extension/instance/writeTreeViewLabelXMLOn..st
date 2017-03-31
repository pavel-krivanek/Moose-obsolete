*XML-Parser-GTExtensions
writeTreeViewLabelXMLOn: aWriter
	aWriter doctype
		root: self root;
		publicID: self publicID;
		systemID: self systemID;
		write