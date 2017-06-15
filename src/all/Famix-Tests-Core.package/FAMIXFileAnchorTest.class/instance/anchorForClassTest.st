helpers
anchorForClassTest
	^ self actualClass new
		startLine: 5;
		startColumn: 0;
		endLine: 21;
		endColumn: 1;
		yourself