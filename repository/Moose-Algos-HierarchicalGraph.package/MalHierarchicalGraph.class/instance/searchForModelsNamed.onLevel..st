enumerating
searchForModelsNamed: aSearchString onLevel: level
	| matcher |
	"Returns a collection of nodes on given level whose model names match the given RegEx string"
	matcher := RxMatcher forString: aSearchString.
	^ (self level: level) select: [ :node | matcher search: node model name ].