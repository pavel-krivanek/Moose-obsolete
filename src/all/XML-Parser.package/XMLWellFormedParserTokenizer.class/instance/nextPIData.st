tokenizing
nextPIData
	| nextChar |

	characterStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $?
			and: [streamReader peek == $>]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInPIValue: nextChar].
			characterStream nextPut: nextChar].
	self expectTerminator.
	^ characterStream contents.