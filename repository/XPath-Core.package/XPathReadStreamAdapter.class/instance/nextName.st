accessing
nextName
	"returns the next qualified or non-qualified name or nil"

	| oldPosition ncNameOrPrefix |

	oldPosition := self position.
	(ncNameOrPrefix := self nextNCName)
		ifNil: [^ nil].
	(self peekFor: $:)
		ifFalse: [
			"just a local name"
			^ ncNameOrPrefix].
	self nextNCName
		ifNil: [
			"an NCName followed by : must have a local name after"
			self position: oldPosition.
			^ nil]
		ifNotNil: [:localName |
			"a full qualified name"
			^ localName qualifyWithXMLPrefix: ncNameOrPrefix].