*petitanalyzer-named
innerChildrenDo: aBlock seen: aSet
	"Iterate over the inner children of the receiver."
	
	self children do: [ :each |
		(aSet includes: each)
			ifTrue: [ ^ self ].
		aSet add: each.
		each name isNil ifTrue: [
			aBlock value: each.
			each innerChildrenDo: aBlock seen: aSet ] ]