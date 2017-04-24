files
saveToFile: anXMLFileHandleOrFileName
	| sourceToSave streamConverter |

	sourceToSave := self text asString.
	streamConverter :=
		self hasEncoding
			ifTrue: [self encoding asXMLStreamConverter]
			ifFalse: [XMLStreamConverter default].
	anXMLFileHandleOrFileName asXMLFileHandle writeStreamDo: [:writeStream |
		writeStream
			streamConverter: streamConverter;
			nextPutByteOrderMark;
			nextPutAll: sourceToSave].