*RoelTyper-enumerating
nonMetaSubclassesDo: aBlock
	"Evaluate the argument, aBlock, for each of the receiver's immediate non-meta subclasses."

	"This one is here for the sake of Squeak (where it is Class and not Behavior that keeps the subclasses instance variable)."

	subclasses == nil ifFalse: [subclasses do: aBlock]