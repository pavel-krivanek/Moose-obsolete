private
writeName: aName
	formatter
		ifNil: [stream nextPutAll: aName]
		ifNotNil: [
			formatter formatBeforeName: aName.
			stream nextPutAll: aName.
			formatter formatAfterName: aName]