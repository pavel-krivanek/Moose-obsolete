*petitanalyzer-named
innerChildren
	"Answer the inner children of the receiver."

	| result |
	result := OrderedCollection new.
	self innerChildrenDo: [ :parser | result addLast: parser ].
	^ result