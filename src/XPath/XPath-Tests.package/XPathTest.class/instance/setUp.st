running
setUp
	document :=
		(XMLDOMParser on: XMLParserTest addressBookXML)
			preservesCommentNodes: true;
			parseDocument.
	namespacedDocument := 
		(XMLDOMParser on: XMLParserTest addressBookNamespacePrefixedXML)
			preservesCommentNodes: true;
			parseDocument.
	textDocument :=
		(XMLDOMParser on: self textDocumentXML)
			preservesCommentNodes: true;
			parseDocument.