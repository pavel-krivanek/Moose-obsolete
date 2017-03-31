accessing
peek
	^ stream atEnd
		ifTrue: [XPathASTNullNode new]
		ifFalse: [stream peek]