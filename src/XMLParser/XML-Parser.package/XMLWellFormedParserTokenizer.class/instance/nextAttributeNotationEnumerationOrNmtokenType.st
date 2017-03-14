tokenizing - dtd
nextAttributeNotationEnumerationOrNmtokenType
	"skip the N"
	streamReader next.
	streamReader peek == $O
		ifTrue: [^ self nextAttributeNotationEnumerationType].
	self
		expectNextAll: 'NMTOKEN'
		startingAt: 2.
	streamReader peek == $S
		ifFalse: [^ 'NMTOKEN'].
	streamReader next.
	^ 'NMTOKENS'.