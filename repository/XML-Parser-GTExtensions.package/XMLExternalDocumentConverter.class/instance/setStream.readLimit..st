initialization
setStream: aStream readLimit: aReadLimit
	streamReader :=
		XMLNestedStreamReader
			on:
				(aStream isXMLConvertingStreamAdapter
					ifTrue: [aStream]
					ifFalse: [XMLDecodingReadStreamAdapter on: aStream])
			readLimit: aReadLimit.

	"this is the preferred LE char for Pharo/Squeak"
	streamReader normalizedLineEndingChar: Character cr.

	outputStream := (String new: 1024) writeStream.
	writeStream := (String new: 64) writeStream.