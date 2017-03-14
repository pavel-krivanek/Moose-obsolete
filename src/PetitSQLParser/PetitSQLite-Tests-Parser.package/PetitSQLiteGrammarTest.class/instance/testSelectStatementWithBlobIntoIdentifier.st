tests
testSelectStatementWithBlobIntoIdentifier
	
	self 
		parse: 'select i.blobid, name, mediatype from appimage i, appblob b where (lower(Name) like ''px state readytopublish'' or lower(Name) like ''px state readytopublish:%'') and i.blobid=b.blobid'
		rule: #selectStatement.