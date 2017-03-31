*petitanalyzer-named
namedChildren
	"Answer the named children of the receiver."

	| result |
	result := OrderedCollection new.
	self namedChildrenDo: [ :parser | result addLast: parser ].
	^ result