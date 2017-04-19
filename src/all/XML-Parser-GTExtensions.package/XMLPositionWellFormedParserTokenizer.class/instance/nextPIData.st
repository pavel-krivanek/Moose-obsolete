tokenizing
nextPIData
	| nextChar quotedStringNameStart quotedStringStart quote |

	characterStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $?
			and: [streamReader peek == $>]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInPIValue: nextChar].
			quotedStringStart
				ifNil: [
					quotedStringNameStart
						ifNil: [
							nextChar isXMLNameStartChar
								ifTrue: [quotedStringNameStart := self currentPosition]
								ifFalse: [
									(nextChar == $"
										or: [nextChar == $'])
										ifTrue: [
											quote := nextChar.
											quotedStringStart := self currentPosition]]]
						ifNotNil: [
							nextChar isXMLNameChar
								ifFalse: [
									driver
										handleStartQuotedStringNamePosition:
											quotedStringNameStart;
										handleEndQuotedStringNamePosition:
											self currentPosition - 1.
									quotedStringNameStart := nil.
									(nextChar == $"
										or: [nextChar == $'])
										ifTrue: [
											quote := nextChar.
											quotedStringStart := self currentPosition]]]]
				ifNotNil: [
					nextChar == quote
						ifTrue: [
							driver
								handleStartQuotedStringPosition: quotedStringStart;
								handleEndQuotedStringPosition: self currentPosition.
							quotedStringStart := nil]]].
	"ignore unterminated strings, but handle terminating names"
	quotedStringNameStart
		ifNotNil: [
			driver
				handleStartQuotedStringNamePosition: quotedStringNameStart;
				handleEndQuotedStringNamePosition: self currentPosition - 1].

	self expectTerminator.
	^ characterStream contents.