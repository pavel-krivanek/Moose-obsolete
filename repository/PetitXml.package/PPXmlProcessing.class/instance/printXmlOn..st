printing
printXmlOn: aStream
	aStream nextPutAll: '<?'; nextPutAll: target; nextPutAll: data; nextPutAll: '?>'