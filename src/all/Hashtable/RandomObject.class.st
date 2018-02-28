Class {
	#name : #RandomObject,
	#superclass : #Object,
	#instVars : [
		'hash'
	],
	#category : #'Hashtable-Objects'
}

{ #category : #accessing }
RandomObject >> hash [
	^hash
]

{ #category : #'initialize-release' }
RandomObject >> initialize [
	super initialize.
	hash := SmallInteger maxVal atRandom
]
