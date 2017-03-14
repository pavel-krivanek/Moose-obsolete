private
initializeFileWriteStream: aWriteStream
	"This sets a stream converter on aWriteStream based on the document's encoding
	attribute and writes the encoding's byte order mark."

	| document |

	aWriteStream
		streamConverter:
			(((document := self document) notNil
				and: [document hasEncoding])
				ifTrue: [document encoding asXMLStreamConverter]
				ifFalse: [XMLStreamConverter default]);
		nextPutByteOrderMark