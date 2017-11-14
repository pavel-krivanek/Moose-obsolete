implementing
function
	| string writeStream isInWhitespace normalizedSpace |

	string :=
		self hasArguments
			ifTrue: [self firstArgument]
			ifFalse: [self newContextNodeNodeSet stringValue].

	"must use #writeStream instead of 'WriteStream on:' to get a 0-based
	stream on Gemstone"
	writeStream := (String new: string size) writeStream.
	isInWhitespace := false.
	normalizedSpace := Character space.
	string do: [:each |
		each isXMLSeparator
			ifTrue: [
				isInWhitespace
					ifFalse: [isInWhitespace := true]]
			ifFalse: [
				isInWhitespace
					ifTrue: [
						writeStream position > 0
							ifTrue: [writeStream nextPut: normalizedSpace].
						isInWhitespace := false].
				writeStream nextPut: each]].
	^ writeStream contents.