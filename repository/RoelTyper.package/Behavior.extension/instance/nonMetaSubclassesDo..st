*RoelTyper-enumerating
nonMetaSubclassesDo: aBlock
	"Evaluate the argument, aBlock, for each of the receiver's immediate non-meta subclasses."

	self subclasses do: aBlock