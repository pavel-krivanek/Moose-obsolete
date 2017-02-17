errors
errorUnterminatedElementsInElement: anElement
	self
		formatParseError: '<{1}> element ended before enclosed element(s) {2}'
		with: anElement
		with: (elementNester printedElementsEnclosedBy: anElement)