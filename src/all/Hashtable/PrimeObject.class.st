Class {
	#name : #PrimeObject,
	#superclass : #Object,
	#category : #'Hashtable-Objects'
}

{ #category : #accessing }
PrimeObject >> hash [
	^self identityHash * 100799
]
