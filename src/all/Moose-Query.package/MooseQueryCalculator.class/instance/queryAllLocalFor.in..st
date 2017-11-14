query
queryAllLocalFor: anEntity in: aCollection
	| properties |
	"Instead of #to:do: we could just use #do: but this implementation is much faster. Maybe sista will remove the needs of the todo later."
	1 to: (properties := self strategy msePropertiesOf: anEntity) size do: [ :ind | (anEntity perform: (properties at: ind) name) ifNotNil: [ :coll | aCollection addAll: coll asCollection ] ].
	^ aCollection