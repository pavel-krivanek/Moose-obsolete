deprecated
descendentElementsNamed: aName do: aBlock
	"less common alternate spelling, will be deprecated;
	use #descendantElementsNamed:do: instead"

	^ self
		descendantElementsNamed: aName
		do: aBlock