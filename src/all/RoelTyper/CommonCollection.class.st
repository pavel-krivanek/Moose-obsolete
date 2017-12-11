Class {
	#name : #CommonCollection,
	#superclass : #Object,
	#instVars : [
		'collection'
	],
	#category : #'RoelTyper-Core'
}

{ #category : #'as yet unclassified' }
CommonCollection class >> on: aCollection [
	^self new collection: aCollection; yourself
]

{ #category : #accessing }
CommonCollection >> collection [
	^ collection
]

{ #category : #accessing }
CommonCollection >> collection: anObject [
	collection := anObject
]

{ #category : #enumerating }
CommonCollection >> do: aBlock [
	^collection copy do: aBlock
]

{ #category : #'system primitives' }
CommonCollection >> doesNotUnderstand: aMessage [
	^aMessage sendTo: collection
]

{ #category : #'*RoelTyper' }
CommonCollection >> fusionWith: aCollection [
	collection addAll: aCollection.
	^self
]

{ #category : #'*RoelTyper' }
CommonCollection >> fusionWithCollection: aCollection [
	^self fusionWith: aCollection
]

{ #category : #accessing }
CommonCollection >> size [
	^collection size
]
