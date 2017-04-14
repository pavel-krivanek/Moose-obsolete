private
writeData
	| dataString dataStringSize quotedStringStart quotedStringNameStart quote |

	self writer space.
	dataString := self data.
	dataStringSize := dataString size.
	1 to: dataStringSize do: [:i | | nextChar |
		nextChar := dataString at: i.
		quotedStringStart
			ifNil: [
				quotedStringNameStart
					ifNil: [
						nextChar isXMLWriterNameStartChar
							ifTrue: [quotedStringNameStart := i]
							ifFalse: [
								(nextChar == $"
									or: [nextChar == $'])
									ifTrue: [
										quote := nextChar.
										quotedStringStart := i]
									ifFalse: [self writer nextPut: nextChar]]]
					ifNotNil: [
						nextChar isXMLWriterNameChar
							ifFalse: [
								self writer writeStringName:
									(dataString
										copyFrom: quotedStringNameStart
										to: i - 1).
								quotedStringNameStart := nil.
								(nextChar == $"
									or: [nextChar == $'])
									ifTrue: [
										quote := nextChar.
										quotedStringStart := i]
									ifFalse: [self writer nextPut: nextChar]]]]
			ifNotNil: [
				nextChar == quote
					ifTrue: [
						self writer
							writeUnescapedString:
								(dataString
									copyFrom: quotedStringStart + 1
									to: i - 1)
							quotedBy: quote.
						quotedStringStart := nil]]].

	quotedStringStart
		ifNil: [
			quotedStringNameStart
				ifNotNil: [
					self writer writeStringName:
						(dataString
							copyFrom: quotedStringNameStart
							to: dataStringSize)]]
		ifNotNil: [
			"allow unterminated strings, because PIs can contain arbitrary data"
			self writer nextPutAll:
				(dataString
					copyFrom: quotedStringStart
					to: dataStringSize)].