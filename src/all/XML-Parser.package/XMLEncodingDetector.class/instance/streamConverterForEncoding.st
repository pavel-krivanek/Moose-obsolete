detecting
streamConverterForEncoding
	| nextChar |

	stream atEnd
		ifTrue: [^ nil].

	(nextChar := stream next) == NullCharacter
		ifTrue: [^ self handleUTF32BigEndianBOMOrImplicitEncoding].
	nextChar asciiValue < 128
		ifTrue: [^ self handleImplicitLittleEndianEncoding].
	nextChar == (UTF8BOM at: 1)	"(UTF8BOM at: 1) asciiValue >= 128"
		ifTrue: [^ self handleUTF8BOM].
	nextChar == (UTF16BigEndianBOM at: 1) "(UTF16BigEndianBOM at: 1) asciiValue >= 128"
		ifTrue: [^ self handleUTF16BigEndianBOM].
	nextChar == (UTF32LittleEndianBOM at: 1) "(UTF32LittleEndianBOM at: 1) asciiValue >= 128"
		ifTrue: [^ self handleUTF32OrUTF16LittleEndianBOM].

	self resetStreamToStartPosition.
	^ nil.