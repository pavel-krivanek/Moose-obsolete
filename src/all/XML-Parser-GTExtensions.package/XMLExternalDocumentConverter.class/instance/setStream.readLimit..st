initialization
setStream: aStream readLimit: anInteger
	streamReader :=
		XMLNestedStreamReader
			on:
				(aStream isXMLConvertingStreamAdapter
					ifTrue: [aStream]
					ifFalse: [XMLDecodingReadStreamAdapter on: aStream])
			readLimit: anInteger.

	"this is the preferred LE char for Pharo/Squeak"
	streamReader normalizedLineEndingChar: Character cr.

	outputStream := (String new: 1024) writeStream.
	writeStream := (String new: 64) writeStream.