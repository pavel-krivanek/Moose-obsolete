reading
read
	self readUntilStart.
	fileAnchor endLine ifNil: [ writeStream nextPutAll: readStream upToEnd ] ifNotNil: [ :endLine | self readUntil: endLine ]