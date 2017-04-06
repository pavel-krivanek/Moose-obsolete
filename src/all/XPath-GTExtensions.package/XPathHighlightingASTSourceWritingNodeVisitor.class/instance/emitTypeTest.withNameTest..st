private
emitTypeTest: aNodeTest withNameTest: aNameTestString
	highlighter startFunctionCallHighlightPosition: self startPosition.
	self
		emitAll: aNodeTest nodeType name;
		emit: $(.
	highlighter endFunctionCallHighlightPosition: self endPosition.
	self emitAll: aNameTestString.
	highlighter startFunctionCallHighlightPosition: self startPosition.
	self emit: $).
	highlighter endFunctionCallHighlightPosition: self endPosition.
	^ aNodeTest