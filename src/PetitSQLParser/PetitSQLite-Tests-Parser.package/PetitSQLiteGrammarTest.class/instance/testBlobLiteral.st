tests
testBlobLiteral
	self 
		parse:' Blob ' 
	 	rule: #blobLiteral.
	self 
		parse:' BLOB ' 
	 	rule: #blobLiteral