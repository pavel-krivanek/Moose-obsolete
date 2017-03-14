*petitanalyzer-named
namedChildrenDo: aBlock seen: aSet
	"Iterate over the named children of the receiver."
	
	self children do: [ :each |
		(aSet includes: each)
			ifTrue: [ ^ self ].
		aSet add: each.
		each name isNil
			ifTrue: [ each namedChildrenDo: aBlock seen: aSet ]
			ifFalse: [ aBlock value: each ] ]