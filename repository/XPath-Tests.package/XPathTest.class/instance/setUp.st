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
		'<a>
			<b>one</b>
			<b>two</b>
			<b>three</b>
		</a>' parseXML.