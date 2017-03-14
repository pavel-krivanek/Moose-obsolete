*petitanalyzer-named
allNamedParsers
	"Answer all the named parse nodes of the receiver."

	| result |
	result := OrderedCollection new.
	self allNamedParsersDo: [ :parser | result addLast: parser ].
	^ result