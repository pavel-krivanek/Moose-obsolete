converting
convertColumnsAsInteger: collectionOfIntegers
	^ self convertColumns: collectionOfIntegers to: [ :s | s asNumber asInteger ]