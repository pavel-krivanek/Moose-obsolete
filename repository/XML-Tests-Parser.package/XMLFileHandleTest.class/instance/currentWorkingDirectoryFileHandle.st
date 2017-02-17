accessing
currentWorkingDirectoryFileHandle
	^ currentWorkingDirectoryFileHandle
		ifNil: [
			currentWorkingDirectoryFileHandle :=
				XMLFileHandle currentWorkingDirectory asXMLFileHandle]