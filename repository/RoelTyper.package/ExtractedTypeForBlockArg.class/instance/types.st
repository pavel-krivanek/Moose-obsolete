accessing
types
	|types|
	types := IdentitySet new.
	lives do: [:et | types addAll: (et mergeTypes)].
	^types asOrderedCollection