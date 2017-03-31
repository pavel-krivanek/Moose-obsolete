accessing
next
	^ stream atEnd
		ifTrue: [XPathASTNullNode new]
		ifFalse: [stream next]