writing
rawWriteStream
	"returns a raw file write stream with no encoding; truncates existing files"

	^ [self newFileWriteStreamOnPath]
		on: Error
		do: [:error | XMLFileException signalMessageFrom: error]