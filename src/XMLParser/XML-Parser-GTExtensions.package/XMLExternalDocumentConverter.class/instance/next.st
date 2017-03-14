private 
next
	^ streamReader next
		ifNotNil: [:nextChar |
			outputStream nextPut: nextChar.
			nextChar]