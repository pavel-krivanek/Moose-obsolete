query
queryAllFor: anEntity
	^ self strategy queryResultOn: anEntity with: (self queryAllFor: anEntity in: OrderedCollection new) asSet