initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	context := XMLUnitializedContext new.
	driver := aDriver.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			readLimit: aReadLimit).

	"must use #writeStream instead of 'WriteStream on:' to get 0-based
	streams on Gemstone"
	nameStream := (String new: 16) writeStream.
	declarationStream := (String new: 32) writeStream.
	characterDataStream := (String new: 128) writeStream.