decoding
detectEncoding
	| preDetectPosition |

	prePeekStreamPosition := nil.
	peekChar := nil.
	postByteOrderMarkStreamPosition := nil.

	"can be 0 or 1 on GS depending on the wrapped stream type"
	preDetectPosition :=
		stream
			reset;
			position.
	(XMLEncodingDetector on: stream) streamConverterForEncoding
		ifNotNil: [:converter |
			self streamConverter: converter.
			stream position > preDetectPosition
				ifTrue: [postByteOrderMarkStreamPosition := stream position]].