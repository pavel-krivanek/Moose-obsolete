"
I am DSL word for better syntax for specs creation sentences.

Look at class side
"
Class {
	#name : #Containing,
	#superclass : #SpecOfDSLClassWords,
	#category : 'StateSpecs-DSL-ClassWords'
}

{ #category : #'specs creation' }
Containing class >> item: anObject [ 
	^SpecOfCollectionContents requiredItem: anObject
]

{ #category : #'specs creation' }
Containing class >> item: itemObject at: keyObject [
	^SpecOfCollectionItem at: keyObject requiredItem: itemObject
]

{ #category : #'specs creation' }
Containing class >> key: anObject [ 
	^SpecOfDictionaryKeys requiredKey: anObject
]
