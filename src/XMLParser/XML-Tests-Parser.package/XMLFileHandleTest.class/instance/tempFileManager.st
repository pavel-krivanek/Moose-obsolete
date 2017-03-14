accessing
tempFileManager
	^ tempFileManager
		ifNil: [
			tempFileManager :=
				XMLTempFileManager
					streamConverter: self streamConverterClass new
					fileContents: self decodedFileContents
					fileSuffix: '.txt']