tokenizing - expecting
expectNextVersionDigit
	| nextChar |

	((nextChar := streamReader next) == nil
		or: [(VersionDigitChars includes: nextChar) not])
		ifTrue: [self errorExpectedVersionDigitButGot: nextChar].
	^ nextChar.