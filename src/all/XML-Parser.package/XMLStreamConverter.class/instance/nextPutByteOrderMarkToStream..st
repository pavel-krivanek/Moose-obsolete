encoding
nextPutByteOrderMarkToStream: aStream
	self class basicByteOrderMarkBytes do: [:each |
		aStream basicNextPutByte: each]