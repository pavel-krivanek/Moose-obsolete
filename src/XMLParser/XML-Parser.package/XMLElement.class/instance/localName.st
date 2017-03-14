accessing
localName
	"Returns the local name of the receiver, the name minus any leading
	prefix and colon like 'local' in 'prefix:local'"

	^ localName ifNil: [localName := self name xmlLocalNameAfterPrefix]