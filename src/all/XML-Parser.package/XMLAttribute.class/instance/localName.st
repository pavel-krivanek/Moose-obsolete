accessing
localName
	"Returns the local name of the receiver, the name minus any leading
	prefix and colon like 'local' in 'prefix:local'"

	"this is recomputed from the name to save memory instead of
	being stored in an inst var like it is for XMLElement"
	^ self name xmlLocalNameAfterPrefix