tests
testMooseNameWithColumns
	| fileAnchor |
	fileAnchor := FAMIXFileAnchor new.
	fileAnchor fileName: 'file'.
	fileAnchor startLine: 1.
	fileAnchor startColumn: 2.
	
	fileAnchor endLine: 3.	
	fileAnchor endColumn: 4.

	self assert: fileAnchor mooseName equals: 'file(1@2-3@4)'