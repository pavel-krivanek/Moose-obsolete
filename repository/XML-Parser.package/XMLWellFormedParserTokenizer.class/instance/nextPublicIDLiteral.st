tokenizing - dtd
nextPublicIDLiteral
	"this returns the pubid with leading and trailing whitespace removed
	and all other whitespace sequences converted to single spaces"
	| quote isInWhitespace nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedPublicIDLiteralStartButGot: quote].

	declarationStream reset.
	isInWhitespace := false.
	"it's not enough to test for nil and PublicIDChars inclusion because
	(PublicIDChars includes: $') = true (double quoted pubids can contain
	single quotes), so the terminating quote must be tested for first to
	handle single quoted pubids correctly"
	[(nextChar := streamReader next) == nil
		or: [nextChar == quote
			or: [(PublicIDChars includes: nextChar) not]]]
		whileFalse: [
			nextChar isXMLSeparator
				ifTrue: [
					isInWhitespace
						ifFalse: [isInWhitespace := true]]
				ifFalse: [
					isInWhitespace
						ifTrue: [
							declarationStream position > 0
								ifTrue: [declarationStream nextPut: NormalizedSpace].
							isInWhitespace := false].
					declarationStream nextPut: nextChar]].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedPublicIDLiteralEnd: quote
				butGot: nextChar].

	^ declarationStream contents.