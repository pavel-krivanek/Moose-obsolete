private - backend access
sharedPools

	| allSharedPools |
	allSharedPools := OrderedCollection new.
	self sharedPoolsDo: [ :each | allSharedPools add: (
		"use classes everywhare you can. TODO: really?"
		each isSymbol 
			ifTrue: [ self environment ask behaviorNamed: each name ]
			ifFalse: [ 
				(each isVariableDefinition and: [each isPoolVariable ])
					ifTrue: [ 
						| beh | 
						beh := self environment ask behaviorNamed: each name.
						beh ifNotNil: [ beh ] ifNil: [ each ] ]
					ifFalse: [ each copy ]])].
	^ allSharedPools 