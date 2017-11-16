Extension { #name : #CommonCollection }

{ #category : #'*RoelTyper' }
CommonCollection >> fusionWith: aCollection [
	collection addAll: aCollection.
	^self
]

{ #category : #'*RoelTyper' }
CommonCollection >> fusionWithCollection: aCollection [
	^self fusionWith: aCollection
]
