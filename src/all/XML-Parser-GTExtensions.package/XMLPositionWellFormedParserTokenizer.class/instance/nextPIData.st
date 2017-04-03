tokenizing
nextPIData
	| nextChar quotedStringStart quote |

	characterDataStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $?
			and: [streamReader peek == $>]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInPIValue: nextChar].
			quotedStringStart
				ifNil: [
					(nextChar == $"
						or: [nextChar == $'])
						ifTrue: [
							quote := nextChar.
							quotedStringStart := self currentPosition]]
				ifNotNil: [
					nextChar == quote
						ifTrue: [
							driver
								handleStartQuotedStringPosition: quotedStringStart;
								handleEndQuotedStringPosition: self currentPosition.
							quotedStringStart := nil]].
			characterDataStream nextPut: nextChar].
	self expectTerminator.
	^ characterDataStream contents.