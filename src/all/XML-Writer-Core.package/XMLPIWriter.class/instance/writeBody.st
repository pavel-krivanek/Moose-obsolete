private
writeBody
	| quotedStringStart quote |

	(self isOmittable
		or: [self hasData not])
		ifTrue: [^ self].

	self writer space.
	1 to: data size do: [:i | | nextChar |
		nextChar := data at: i.
		quotedStringStart
			ifNil: [
				(nextChar == $"
					or: [nextChar == $'])
					ifTrue: [
						quote := nextChar.
						quotedStringStart := i]
					ifFalse: [self writer nextPut: nextChar]]
			ifNotNil: [
				nextChar == quote
					ifTrue: [| quotedStringValue |
						quotedStringValue :=
							data
								copyFrom: quotedStringStart + 1
								to: i - 1.
						"do not use #writeUnescapedString: here to preserve the exact
						quote char used, because PIs can contain arbitrary data"
						self writer
							nextPut: quote;
							formatBeforeQuotedStringValue: quotedStringValue;
							nextPutAll: quotedStringValue;
							formatAfterQuotedStringValue: quotedStringValue;
							nextPut: quote.
						quotedStringStart := nil]]].

	"allow unterminated strings, because PIs can contain arbitrary data"
	quotedStringStart
		ifNotNil: [
			quotedStringStart to: data size do: [:i |
				self writer nextPut: (data at: i)]].