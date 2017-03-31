enumerating
searchForModelsNamed: aSearchString
	| matcher |
	"Returns a collection of nodes whose model names match the given RegEx string"
	matcher := RxMatcher forString: aSearchString.
	^ self nodes select: [ :node | matcher search: node model name ].