printing
mooseNameOn: aStream 
	"Hook to customize the rendered text of an entity. Do not specialize mooseName, but change/specialize this method if necessary."
	self mooseID isNil 
		ifTrue: [ aStream nextPutAll: 'nil mooseID!!!' ]
		ifFalse: 
			[ self name 
				ifNil: [ aStream print: self mooseID ]
				ifNotNil: [ aStream nextPutAll: self name ] ]