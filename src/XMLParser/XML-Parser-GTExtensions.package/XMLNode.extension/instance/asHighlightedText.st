*XML-Parser-GTExtensions
asHighlightedText
	^ self asHighlightedTextWrittenWith: [:writer |
		self writeXMLOn: writer]