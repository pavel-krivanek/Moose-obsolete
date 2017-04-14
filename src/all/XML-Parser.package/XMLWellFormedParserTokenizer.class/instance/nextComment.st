tokenizing
nextComment
	| nextChar |

	"Skip first -"
	streamReader next.
	self expectNext: $-.

	"xml comments can't have '--' in them and must be followed
	by the terminating '>'"
	characterStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $-
			and: [streamReader peek == $-]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInComment: nextChar].
			characterStream nextPut: nextChar].
	self
		expectNext: $-;
		expectTerminator.

	driver handleComment: characterStream contents.