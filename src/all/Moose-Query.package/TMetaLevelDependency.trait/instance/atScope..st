scoping
atScope: aClassFAMIX
	"I am used to return all the entities at a given famix class scope that are up in the containment tree of the metamodel"

	^ ((self isKindOf: aClassFAMIX)
		ifTrue: [ self ]
		ifFalse: [ | res selectors |
			res := OrderedCollection new.
			1 to: (selectors := self parentSelectors) size do: [ :ind | (self perform: (selectors at: ind)) ifNotNil: [ :parents | parents asCollection do: [ :parent | res addAll: (parent atScope: aClassFAMIX) ] ] ].
			res ]) asArray