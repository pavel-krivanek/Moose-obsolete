private
writeStringName: aName
	formatter
		ifNil: [stream nextPutAll: aName]
		ifNotNil: [
			formatter formatBeforeQuotedStringName: aName.
			stream nextPutAll: aName.
			formatter formatAfterQuotedStringName: aName]