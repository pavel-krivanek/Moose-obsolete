private
writeUnescapedString: aString
	| quote |

	quote :=
		(aString includes: $")
			ifTrue: [$']
			ifFalse: [$"].
	self
		nextPut: quote;
		formatBeforeQuotedStringValue: aString.
	aString do: [:each |
		"delimiters are skipped because they can't be escaped here"
		each == quote
			ifFalse: [self nextPut: each]].
	self	
		formatAfterQuotedStringValue: aString;
		nextPut: quote.