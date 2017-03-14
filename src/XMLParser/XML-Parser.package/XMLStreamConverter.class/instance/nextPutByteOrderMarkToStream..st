encoding
nextPutByteOrderMarkToStream: aStream
	self class byteOrderMarkBytes do: [:each | aStream basicNextPutByte: each]