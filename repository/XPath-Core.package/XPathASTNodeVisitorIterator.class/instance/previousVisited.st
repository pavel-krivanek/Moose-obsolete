accessing
previousVisited
	^ previousVisited ifNil: [previousVisited := XPathASTNullNode new]