Extension { #name : #Collection }

{ #category : #'*RoelTyper' }
Collection >> fusionWith: aCollection [ 
	^aCollection fusionWithCollection: self
]

{ #category : #'*RoelTyper' }
Collection >> fusionWithCollection: aCollection [ 
	^(CommonCollection on: aCollection) fusionWith: self
]

{ #category : #'*RoelTyper-testing' }
Collection >> sameElements: aCollection [
	^(self allSatisfy: [:each | aCollection includes: each])
		and: [aCollection allSatisfy: [:each | self includes: each]]
]
