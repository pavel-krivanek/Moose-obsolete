tests
testMooseNameWithColumns
	| fileAnchor |
	fileAnchor := self actualClass new
		fileName: 'file';
		startLine: 1;
		startColumn: 2;
		endLine: 3;
		endColumn: 4;
		yourself.
	self assert: fileAnchor mooseName equals: 'file(1@2-3@4)'