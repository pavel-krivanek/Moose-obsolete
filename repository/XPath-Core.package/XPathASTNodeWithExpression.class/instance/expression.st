accessing
expression
	^ expression ifNil: [expression := XPathASTNullNode new]