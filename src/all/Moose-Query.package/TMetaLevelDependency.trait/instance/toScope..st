scoping
toScope: aClassFAMIX
	"I am used to return all the entities at a given famix class scope that are down in the containment tree of the metamodel"

	^ (self isKindOf: aClassFAMIX)
		ifTrue: [ Array with: self ]
		ifFalse: [ | res selectors |
			res := OrderedCollection new.
			1 to: (selectors := self childrenSelectors) size do: [ :ind | (self perform: (selectors at: ind)) ifNotNil: [ :children | children asCollection do: [ :child | res addAll: (child toScope: aClassFAMIX) ] ] ].
			res asArray ]