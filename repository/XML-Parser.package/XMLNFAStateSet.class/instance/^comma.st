copying
, aCollection
	"GS doesn't define #, for non-Sequenceable collections"
	^ self copy
		addAll: aCollection;
		yourself