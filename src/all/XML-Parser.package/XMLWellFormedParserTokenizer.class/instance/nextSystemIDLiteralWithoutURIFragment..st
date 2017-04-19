tokenizing - dtd
nextSystemIDLiteralWithoutURIFragment: aBoolean
	"Returns the system ID literal.
	If aBoolean is true, it disallows '#' URI fragments."

	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedSystemIDLiteralStartButGot: quote].

	characterStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == quote]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInSystemID: nextChar].
			aBoolean
				ifTrue: [
					nextChar == $#
						ifTrue: [self errorURIFragmentInSystemID]].
			characterStream nextPut: nextChar].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedSystemIDLiteralEnd: quote
				butGot: nextChar].

	^ characterStream contents.