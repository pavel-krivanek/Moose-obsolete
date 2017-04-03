*XPath-GTExtensions
asHighlightedText
	^ XPathHighlightingASTSourceWritingNodeVisitor new
		visitNode: self;
		asHighlightedText