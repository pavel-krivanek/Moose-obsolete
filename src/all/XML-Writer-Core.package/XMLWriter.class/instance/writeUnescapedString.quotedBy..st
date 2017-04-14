private
writeUnescapedString: aString quotedBy: aQuote
	stream nextPut: aQuote.
	formatter
		ifNotNil: [
			formatter formatBeforeQuotedStringValue: aString].
	1 to: aString size do: [:i | | nextChar |
		"delimiters are skipped because they can't be escaped here"
		(nextChar := aString at: i) == aQuote
			ifFalse: [stream nextPut: nextChar]].
	formatter
		ifNotNil: [
			formatter formatAfterQuotedStringValue: aString].
	stream nextPut: aQuote.