*XML-Parser-GTExtensions
asHighlightedSourceText
	^ self asHighlightedTextWrittenWith: [:writer |
		"Add some formatting for the the non-content markup (markup outside
		the root element), because whatever formatting was there was
		lost during parsing. Avoid other formatting, to try to preserve the
		original."
		writer enablePrologPrettyPrinting.
		self writeXMLOn: writer]