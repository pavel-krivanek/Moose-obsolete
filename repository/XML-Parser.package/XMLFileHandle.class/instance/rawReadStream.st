reading
rawReadStream
	"returns a raw file read stream with no decoding"

	self exists
		ifFalse: [self errorFileDoesNotExist].
	self isFile
		ifFalse: [self errorNotAFile].
	
	^ [self newFileReadStreamOnPath]
		on: Error
		do: [:error | XMLFileException signalMessageFrom: error].