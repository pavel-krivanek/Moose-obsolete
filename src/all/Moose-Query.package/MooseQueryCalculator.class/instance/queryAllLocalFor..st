query
queryAllLocalFor: anEntity

	^ self strategy queryResultOn: anEntity with: (self queryAllLocalFor: anEntity in: OrderedCollection new) asSet