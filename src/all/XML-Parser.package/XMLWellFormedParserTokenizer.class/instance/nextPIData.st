tokenizing
nextPIData
	| nextChar |

	characterDataStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $?
			and: [streamReader peek == $>]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInPIValue: nextChar].
			characterDataStream nextPut: nextChar].
	self expectTerminator.
	^ characterDataStream contents.