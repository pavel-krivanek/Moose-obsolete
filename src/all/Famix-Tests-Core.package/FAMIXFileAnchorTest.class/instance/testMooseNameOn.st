tests
testMooseNameOn
	| fileAnchor |
	fileAnchor := self actualClass new
		fileName: 'file';
		startLine: 1;
		endLine: 9;
		yourself.
	self assert: fileAnchor mooseName equals: 'file(1@nil-9@nil)'