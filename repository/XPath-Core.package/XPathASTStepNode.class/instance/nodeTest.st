accessing
nodeTest
	^ nodeTest ifNil: [nodeTest := XPathASTNullNode new]