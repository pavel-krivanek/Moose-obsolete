tests
testMooseName
	| fileAnchor |
	fileAnchor := FAMIXFileAnchor new.
	fileAnchor fileName: 'file'.
	fileAnchor startLine: 1.
	fileAnchor endLine: 9.

	self assert: fileAnchor mooseName equals: 'file(1@nil-9@nil)'