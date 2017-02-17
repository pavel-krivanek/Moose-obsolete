*petitanalyzer-named
allNamedParsersDo: aBlock
	"Iterate over all the named parse nodes of the receiver."

	self allParsersDo: [ :each | 
		each name notNil
			ifTrue: [ aBlock value: each ] ]