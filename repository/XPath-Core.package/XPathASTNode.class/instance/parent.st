accessing
parent
	^ parent ifNil: [parent := XPathASTNullNode new]